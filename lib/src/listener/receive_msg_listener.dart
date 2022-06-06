import 'package:path_im_core_flutter/src/proto/msg.pb.dart';

/// 接收消息监听
class ReceiveMsgListener {
  final Function(MsgData msgData)? onReceiveMsg; // 接收消息
  final Function(MsgData msgData)? onReceiveGroupMsg; // 接收群聊消息

  ReceiveMsgListener({
    this.onReceiveMsg,
    this.onReceiveGroupMsg,
  });

  void receiveMsg(MsgData msgData) {
    if (onReceiveMsg != null) onReceiveMsg!(msgData);
  }

  void receiveGroupMsg(MsgData msgData) {
    if (onReceiveGroupMsg != null) onReceiveGroupMsg!(msgData);
  }
}
