import 'package:path_im_core_flutter/src/callback/group_callback.dart';
import 'package:path_im_core_flutter/src/callback/user_callback.dart';
import 'package:path_im_core_flutter/src/constant/conversation_type.dart';
import 'package:path_im_core_flutter/src/listener/connect_listener.dart';
import 'package:path_im_core_flutter/src/listener/receive_msg_listener.dart';
import 'package:path_im_core_flutter/src/listener/send_msg_listener.dart';
import 'package:path_im_core_flutter/src/proto/msg.pb.dart';
import 'package:path_im_core_flutter/src/proto/pull.pb.dart';
import 'package:path_im_core_flutter/src/socket/path_socket.dart';
import 'package:fixnum/fixnum.dart';

class PathIMCore {
  factory PathIMCore() => _getInstance();

  static PathIMCore get instance => _getInstance();
  static PathIMCore? _instance;

  static PathIMCore _getInstance() {
    return _instance ??= PathIMCore._internal();
  }

  PathIMCore._internal();

  PathSocket? _pathSocket;

  /// 初始化
  void init({
    required String wsUrl,
    bool autoPull = true,
    Duration autoPullTime = const Duration(seconds: 25),
    required UserCallback userCallback,
    GroupCallback? groupCallback,
    ConnectListener? connectListener,
    ReceiveMsgListener? receiveMsgListener,
    SendMsgListener? sendMsgListener,
  }) async {
    _pathSocket = PathSocket(
      wsUrl: wsUrl,
      autoPull: autoPull,
      autoPullTime: autoPullTime,
      userCallback: userCallback,
      groupCallback: groupCallback,
      connectListener: connectListener,
      receiveMsgListener: receiveMsgListener,
      sendMsgListener: sendMsgListener,
    );
  }

  /// 登录
  Future login({
    required String token,
    required String userID,
  }) async {
    await _pathSocket?.connect(
      token: token,
      userID: userID,
    );
  }

  /// 登出
  Future logout() async {
    await _pathSocket?.disconnect();
  }

  /// 是否登录
  bool isLogin() {
    return _pathSocket?.isConnect() ?? false;
  }

  /// 拉取单聊消息
  void pullSingleMsg({
    required List<int> seqList,
  }) {
    if (seqList.isEmpty) return;
    PullMsgBySeqListReq pullSeqListReq = PullMsgBySeqListReq(
      seqList: seqList,
    );
    _pathSocket?.sendData(
      PathProtocol.pullMsgBySeqList,
      pullSeqListReq.writeToBuffer(),
    );
  }

  /// 拉取群聊消息
  void pullGroupMsg({
    required String groupID,
    required List<int> seqList,
  }) {
    if (seqList.isEmpty) return;
    PullMsgByGroupSeqListReq pullGroupSeqListReq = PullMsgByGroupSeqListReq(
      groupID: groupID,
      seqList: seqList,
    );
    _pathSocket?.sendData(
      PathProtocol.pullMsgByGroupSeqList,
      pullGroupSeqListReq.writeToBuffer(),
    );
  }

  /// 发送消息
  void sendMsg({
    required String clientMsgID,
    required int conversationType,
    required String sendID,
    required String receiveID,
    required int contentType,
    required List<int> content,
    List<String>? atUserIDList,
    required Int64 clientTime,
    OfflinePush? offlinePush,
    required MsgOptions msgOptions,
  }) {
    assert(conversationType >= ConversationType.single &&
        conversationType <= ConversationType.group);
    SendMsgReq sendMsgReq = SendMsgReq(
      msgData: MsgData(
        clientMsgID: clientMsgID,
        conversationType: conversationType,
        sendID: sendID,
        receiveID: receiveID,
        contentType: contentType,
        content: content,
        atUserIDList: atUserIDList,
        clientTime: clientTime,
        offlinePush: offlinePush,
        msgOptions: msgOptions,
      ),
    );
    _pathSocket?.sendData(
      PathProtocol.sendAndReceiptMsg,
      sendMsgReq.writeToBuffer(),
    );
  }
}
