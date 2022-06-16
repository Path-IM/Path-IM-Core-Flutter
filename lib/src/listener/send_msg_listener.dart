import 'package:path_im_core_flutter/src/proto/msg.pb.dart';

/// 发送消息监听
class SendMsgListener {
  final Function(SendMsgResp msgResp)? onSuccess; // 发送成功
  final Function(SendMsgResp msgResp, String errMsg)? onFailed; // 发送失败
  final Function(SendMsgResp msgResp, String errMsg)? onLimit; // 发送限流

  SendMsgListener({
    this.onSuccess,
    this.onFailed,
    this.onLimit,
  });

  void success(SendMsgResp msgResp) {
    if (onSuccess != null) onSuccess!(msgResp);
  }

  void failed(SendMsgResp msgResp, String errMsg) {
    if (onFailed != null) onFailed!(msgResp, errMsg);
  }

  void limit(SendMsgResp msgResp, String errMsg) {
    if (onLimit != null) onLimit!(msgResp, errMsg);
  }
}
