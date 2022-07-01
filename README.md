# Path-IM-Core-Flutter

[![Pub](https://img.shields.io/pub/v/path_im_core_flutter.svg?style=flat-square)](https://pub.dev/packages/path_im_core_flutter)

支持Flutter5端开发。实现最基础的通讯协议，完全可自主控制，可高度定制化IM需求。

## 初始化

     PathIMCore.instance.init(
       wsUrl: "",
       autoPull: true, // 自动拉取
       autoPullTime: const Duration(seconds: 30), // 自动拉取时间
       userCallback: UserCallback(
         onMaxSeq: () async {
           // 返回用户MaxSeq
           return 0;
         },
       ),
       groupCallback: GroupCallback(
         onGroupIDList: () async {
           // 返回用户群聊IDList
           return [""];
         },
         onGroupMaxSeq: (groupID) async {
           // 根据群聊ID返回群聊MaxSeq
           return 0;
         },
       ),
       connectListener: ConnectListener(
         onConnecting: () {
           // 连接中
         },
         onSuccess: () {
           // 连接成功
         },
         onError: (error) {
           // 发生错误
         },
         onClose: () {
           // 连接关闭
         },
       ),
       receiveMsgListener: ReceiveMsgListener(
         onPullMsg: (msgList){
           // 拉取消息列表
         },
         onPushMsg: (msg) {
           if (msg.serverMsgID.isEmpty) return;
           if (msg.conversationType == ConversationType.single) {
             // 推送单聊消息
           } else if (msg.conversationType == ConversationType.group) {
             // 推送群聊消息
           }
         },
       ),
       sendMsgListener: SendMsgListener(
         onSuccess: (sendMsgResp) {
           // 发送消息成功
         },
         onFailed: (clientMsgID, errMsg) {
           // 发送消息失败
         },
         onLimit: (clientMsgID, errMsg) {
           // 发送消息限流
         },
       ),
     );

## 登录

     PathIMCore.instance.login(
       token: "",
       userID: "",
     );

## 登出

     PathIMCore.instance.logout();

## 主动拉取

### 单聊

     PathIMCore.instance.pullSingleMsg(seqList: []);

### 群聊

     PathIMCore.instance.pullGroupMsg(groupID: "", seqList: []);

## 发送消息

### 单聊

     PathIMCore.instance.sendMsg(
       clientMsgID: "",
       conversationType: ConversationType.single,
       sendID: "",
       receiveID: "",
       contentType: 1001,
       content: utf8.encode(""),
       clientTime: Int64(1654466766000),
       offlinePush: OfflinePush(
         title: "",
         desc: "",
         iOSPushSound: "+1",
         iOSBadgeCount: true,
       ),
       msgOptions: MsgOptions(
         persistent: true, // 是否存持久
         history: true, // 是否存历史
         local: true, // 是否存本地
         updateUnreadCount: true, // 更新本地未读数
         updateConversation: true, // 更新本地会话列表
       ),
     );

### 群聊

     PathIMCore.instance.sendMsg(
       clientMsgID: "",
       conversationType: ConversationType.group,
       sendID: "",
       receiveID: "",
       contentType: 1001,
       content: utf8.encode(""),
       clientTime: Int64(1654466766000),
       offlinePush: OfflinePush(
         title: "",
         desc: "",
         iOSPushSound: "+1",
         iOSBadgeCount: true,
       ),
       msgOptions: MsgOptions(
         persistent: true, // 是否存持久
         history: true, // 是否存历史
         local: true, // 是否存本地
         updateUnreadCount: true, // 更新本地未读数
         updateConversation: true, // 更新本地会话列表
       ),
     );
