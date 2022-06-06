import 'dart:async';
import 'dart:io';
import 'package:path_im_core_flutter/src/callback/group_callback.dart';
import 'package:path_im_core_flutter/src/callback/user_callback.dart';
import 'package:path_im_core_flutter/src/listener/connect_listener.dart';
import 'package:path_im_core_flutter/src/listener/receive_msg_listener.dart';
import 'package:path_im_core_flutter/src/listener/send_msg_listener.dart';
import 'package:path_im_core_flutter/src/proto/body.pb.dart';
import 'package:path_im_core_flutter/src/proto/msg.pb.dart';
import 'package:path_im_core_flutter/src/proto/pull.pb.dart';
import 'package:path_im_core_flutter/src/proto/seq.pb.dart';
import 'path_protocol.dart';

export 'path_protocol.dart';

class PathSocket {
  final String wsUrl;
  final Duration pulseDuration;
  final Duration retryDuration;
  final UserCallback userCallback;
  final GroupCallback? groupCallback;
  final ConnectListener? connectListener;
  final ReceiveMsgListener? receiveMsgListener;
  final SendMsgListener? sendMsgListener;

  PathSocket({
    required this.wsUrl,
    required this.pulseDuration,
    required this.retryDuration,
    required this.userCallback,
    this.groupCallback,
    this.connectListener,
    this.receiveMsgListener,
    this.sendMsgListener,
  });

  late String token;
  late String userID;

  WebSocket? _webSocket;
  Timer? _pulseTimer;
  Timer? _retryTimer;
  bool? _isRetry;

  /// 建立连接
  Future connect({
    required String token,
    required String userID,
  }) async {
    this.token = token;
    this.userID = userID;
    _isRetry = true;
    connectListener?.connecting();
    Uri uri = Uri(path: wsUrl, queryParameters: {
      "token": token,
      "userID": userID,
      "platform": PathProtocol.getPlatform(),
    });
    _webSocket = await WebSocket.connect(uri.toString())
      ..listen(
        _receiveData,
        onError: (error) {
          _retryConnect();
          connectListener?.error(error);
        },
        onDone: () {
          disconnect();
          connectListener?.close();
        },
        cancelOnError: true,
      );
    connectListener?.success();
    _openPulse();
  }

  /// 断开连接
  Future disconnect() async {
    _closePulse();
    _cancelRetry();
    _isRetry = false;
    await _webSocket?.close();
    _webSocket = null;
  }

  /// 是否连接
  bool isConnect() {
    return _webSocket != null;
  }

  /// 打开脉搏
  void _openPulse() {
    void getSeq() {
      GetMinAndMaxSeqReq seqReq = GetMinAndMaxSeqReq();
      sendData(
        PathProtocol.getMinAndMaxSeq,
        seqReq.writeToBuffer(),
      );
    }

    void getGroupSeq() async {
      if (groupCallback == null) return;
      List<String> groupIDList = await groupCallback!.groupIDList();
      if (groupIDList.isEmpty) return;
      GetMinAndMaxGroupSeqReq groupSeqReq = GetMinAndMaxGroupSeqReq(
        groupIDList: groupIDList,
      );
      sendData(
        PathProtocol.getMinAndMaxGroupSeq,
        groupSeqReq.writeToBuffer(),
      );
    }

    _closePulse();
    getSeq();
    getGroupSeq();
    _pulseTimer = Timer.periodic(
      pulseDuration,
      (timer) {
        getSeq();
        getGroupSeq();
      },
    );
  }

  /// 取消脉搏
  void _closePulse() {
    if (_pulseTimer != null) {
      _pulseTimer!.cancel();
      _pulseTimer = null;
    }
  }

  /// 重试连接
  void _retryConnect() {
    _cancelRetry();
    if (_isRetry == false) return;
    _retryTimer = Timer(
      retryDuration,
      () {
        connect(token: token, userID: userID);
      },
    );
  }

  /// 取消重试
  void _cancelRetry() {
    if (_retryTimer != null) {
      _retryTimer!.cancel();
      _retryTimer = null;
    }
  }

  /// 接收数据
  void _receiveData(data) {
    BodyResp bodyResp = BodyResp.fromBuffer(data);
    switch (bodyResp.reqIdentifier) {
      case PathProtocol.getMinAndMaxSeq: // 获取最新Seq
        _getMinAndMaxSeq(bodyResp);
        break;
      case PathProtocol.pullMsgBySeqList: // 使用Seq列表拉取消息
        _pullMsgBySeqList(bodyResp);
        break;
      case PathProtocol.getMinAndMaxGroupSeq: // 获取最新群聊Seq
        _getMinAndMaxGroupSeq(bodyResp);
        break;
      case PathProtocol.pullMsgByGroupSeqList: // 使用群聊Seq列表拉取消息
        _pullMsgByGroupSeqList(bodyResp);
        break;
      case PathProtocol.sendMsgAndReceipt: // 发送消息回执
        _sendMsgReceipt(bodyResp);
        break;
      case PathProtocol.receivePushMsg: // 接收推送消息
        _receivePushMsg(MsgData.fromBuffer(bodyResp.data));
        break;
      case PathProtocol.receivePushGroupMsg: // 接收推送群聊消息
        _receivePushGroupMsg(MsgData.fromBuffer(bodyResp.data));
        break;
    }
  }

  /// 获取最新Seq
  void _getMinAndMaxSeq(BodyResp bodyResp) async {
    if (bodyResp.errCode != 0) return;
    GetMinAndMaxSeqResp resp = GetMinAndMaxSeqResp.fromBuffer(
      bodyResp.data,
    );
    int minSeq = resp.minSeq;
    int maxSeq = resp.maxSeq;
    List<int> seqList = [];
    int value = await userCallback.maxSeq();
    if (value == 0) {
      seqList = List.generate(maxSeq - minSeq, (index) {
        return minSeq + index + 1;
      });
    } else {
      if (value < maxSeq) {
        seqList = List.generate(maxSeq - value, (index) {
          return value + index + 1;
        });
      }
    }
    if (seqList.isEmpty) return;
    PullMsgBySeqListReq pullSeqListReq = PullMsgBySeqListReq(
      seqList: seqList,
    );
    sendData(
      PathProtocol.pullMsgBySeqList,
      pullSeqListReq.writeToBuffer(),
    );
  }

  /// 使用Seq列表拉取消息
  void _pullMsgBySeqList(BodyResp bodyResp) {
    if (bodyResp.errCode != 0) return;
    PullMsgListResp resp = PullMsgListResp.fromBuffer(
      bodyResp.data,
    );
    List<MsgData> msgList = resp.list;
    for (MsgData msg in msgList) {
      _receivePushMsg(msg);
    }
  }

  /// 获取最新群聊Seq
  void _getMinAndMaxGroupSeq(BodyResp bodyResp) async {
    if (bodyResp.errCode != 0) return;
    GetMinAndMaxGroupSeqResp resp = GetMinAndMaxGroupSeqResp.fromBuffer(
      bodyResp.data,
    );
    List<GetMinAndMaxGroupSeqItem> groupSeqList = resp.groupSeqList;
    for (GetMinAndMaxGroupSeqItem item in groupSeqList) {
      String groupID = item.groupID;
      int minSeq = item.minSeq;
      int maxSeq = item.maxSeq;
      List<int> seqList = [];
      int? value = await groupCallback?.groupMaxSeq(groupID);
      if (value == null || value == 0) {
        seqList = List.generate(maxSeq - minSeq, (index) {
          return minSeq + index + 1;
        });
      } else {
        if (value < maxSeq) {
          seqList = List.generate(maxSeq - value, (index) {
            return value + index + 1;
          });
        }
      }
      if (seqList.isEmpty) return;
      PullMsgByGroupSeqListReq pullGroupSeqListReq = PullMsgByGroupSeqListReq(
        groupID: groupID,
        seqList: seqList,
      );
      sendData(
        PathProtocol.pullMsgBySeqList,
        pullGroupSeqListReq.writeToBuffer(),
      );
    }
  }

  /// 使用群聊Seq列表拉取消息
  void _pullMsgByGroupSeqList(BodyResp bodyResp) {
    if (bodyResp.errCode != 0) return;
    PullMsgListResp resp = PullMsgListResp.fromBuffer(
      bodyResp.data,
    );
    List<MsgData> msgList = resp.list;
    for (MsgData msg in msgList) {
      _receivePushGroupMsg(msg);
    }
  }

  /// 发送消息回执
  void _sendMsgReceipt(BodyResp bodyResp) {
    SendMsgResp resp = SendMsgResp.fromBuffer(
      bodyResp.data,
    );
    if (bodyResp.errCode == 0) {
      sendMsgListener?.success(resp.clientMsgID);
    } else if (bodyResp.errCode == 1) {
      sendMsgListener?.failed(resp.clientMsgID);
    } else if (bodyResp.errCode == 2) {
      sendMsgListener?.limit(resp.clientMsgID);
    }
  }

  /// 接收推送消息
  void _receivePushMsg(MsgData msg) {
    receiveMsgListener?.receiveMsg(msg);
  }

  /// 接收推送群聊消息
  void _receivePushGroupMsg(MsgData msg) {
    receiveMsgListener?.receiveGroupMsg(msg);
  }

  /// 发送数据
  void sendData(int reqIdentifier, List<int> data) {
    BodyReq bodyReq = BodyReq(
      reqIdentifier: reqIdentifier,
      token: token,
      sendID: userID,
      data: data,
    );
    _webSocket?.add(bodyReq.writeToBuffer());
  }
}
