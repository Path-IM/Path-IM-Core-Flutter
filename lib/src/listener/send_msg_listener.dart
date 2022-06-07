import 'package:path_im_core_flutter/src/proto/msg.pb.dart';

/// 发送消息监听
class SendMsgListener {
  final Function(SendMsgResp sendMsgResp)? onSuccess; // 发送成功
  final Function(SendMsgResp sendMsgResp, String errMsg)? onFailed; // 发送失败
  final Function(SendMsgResp sendMsgResp, String errMsg)? onLimit; // 发送限流

  SendMsgListener({
    this.onSuccess,
    this.onFailed,
    this.onLimit,
  });

  void success(SendMsgResp sendMsgResp) {
    if (onSuccess != null) onSuccess!(sendMsgResp);
  }

  void failed(SendMsgResp sendMsgResp, String errMsg) {
    if (onFailed != null) onFailed!(sendMsgResp, errMsg);
  }

  void limit(SendMsgResp sendMsgResp, String errMsg) {
    if (onLimit != null) onLimit!(sendMsgResp, errMsg);
  }
}
