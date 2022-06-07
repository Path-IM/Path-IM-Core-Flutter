/// 连接状态监听
class ConnectListener {
  final Function()? onConnecting; // 连接中
  final Function()? onSuccess; // 连接成功
  final Function(dynamic error)? onError; // 发生错误
  final Function()? onClose; // 连接关闭

  ConnectListener({
    this.onConnecting,
    this.onSuccess,
    this.onError,
    this.onClose,
  });

  void connecting() {
    if (onConnecting != null) onConnecting!();
  }

  void success() {
    if (onSuccess != null) onSuccess!();
  }

  void error(dynamic error) {
    if (onError != null) onError!(error);
  }

  void close() {
    if (onClose != null) onClose!();
  }
}
