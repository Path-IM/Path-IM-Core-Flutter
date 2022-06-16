import 'package:path_im_core_flutter/src/proto/msg.pb.dart';

/// 接收消息监听
class ReceiveMsgListener {
  final Function(List<MsgData> msgList)? onPullMsg; // 拉取消息
  final Function(MsgData msg)? onPushMsg; // 推送消息

  ReceiveMsgListener({
    this.onPullMsg,
    this.onPushMsg,
  });

  void pullMsg(List<MsgData> msgList) {
    if (onPullMsg != null) onPullMsg!(msgList);
  }

  void pushMsg(MsgData msg) {
    if (onPushMsg != null) onPushMsg!(msg);
  }
}
