/// 获取用户群聊必需参数
class GroupCallback {
  final Future<List<String>> Function() onGroupIDList; // 返回用户群聊IDList
  final Future<int> Function(String groupID) onGroupMaxSeq; // 根据群聊ID返回群聊MaxSeq

  GroupCallback({
    required this.onGroupIDList,
    required this.onGroupMaxSeq,
  });

  Future<List<String>> groupIDList() {
    return onGroupIDList();
  }

  Future<int> groupMaxSeq(String groupID) {
    return onGroupMaxSeq(groupID);
  }
}
