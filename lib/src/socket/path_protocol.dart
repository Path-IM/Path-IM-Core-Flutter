import 'dart:io';

class PathProtocol {
  static const int getMinAndMaxSeq = 1001; // 获取最新Seq
  static const int pullMsgBySeqList = 1002; // 使用SeqList拉取消息
  static const int getMinAndMaxGroupSeq = 1003; // 获取最新群聊Seq
  static const int pullMsgByGroupSeqList = 1004; // 使用群聊SeqList拉取消息
  static const int sendAndReceiptMsg = 2001; // 发送和回执消息
  static const int receivePushMsg = 2002; // 接收推送消息
  static const int receiveGroupPushMsg = 2003; // 接收群聊推送消息

  /// 获取当前平台
  static String getPlatform() {
    if (Platform.isIOS) {
      return "IOS";
    } else if (Platform.isAndroid) {
      return "Android";
    } else if (Platform.isWindows) {
      return "Windows";
    } else if (Platform.isMacOS) {
      return "OSX";
    } else if (Platform.isLinux) {
      return "Linux";
    }
    return "";
  }

  /// 生成SeqList
  static List<int> generateSeqList(int seq, int minSeq, int maxSeq) {
    List<int> seqList = [];
    if (seq == 0) {
      seqList = List.generate(maxSeq - minSeq, (index) {
        return minSeq + index + 1;
      });
    } else {
      if (seq < maxSeq) {
        seqList = List.generate(maxSeq - seq, (index) {
          return seq + index + 1;
        });
      }
    }
    return seqList;
  }
}
