import 'package:path_im_core_flutter/src/proto/msg.pb.dart';

/// 接收消息监听
class ReceiveMsgListener {
  final Function(MsgData msgData)? onReceive; // 接收消息

  ReceiveMsgListener({
    this.onReceive,
  });

  void receive(MsgData msgData) {
    if (onReceive != null) onReceive!(msgData);
  }
}
