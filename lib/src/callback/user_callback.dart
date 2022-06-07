/// 获取用户必需参数
class UserCallback {
  final Future<int> Function() onMaxSeq; // 返回用户MaxSeq

  UserCallback({
    required this.onMaxSeq,
  });

  Future<int> maxSeq() {
    return onMaxSeq();
  }
}
