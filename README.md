# Path-IM-Core-Flutter

实现最基础的通讯协议。有高度定制IM需求的开发者，可以使用这个项目。

## 初始化

     PathIMCore.instance.init(
       wsUrl: "",
       autoPullMsg: true, // 是否自动拉取
       pulseTime: const Duration(seconds: 30), // 自动拉取间隔时间
       retryTime: const Duration(seconds: 3), // 断开重试间隔时间
       userCallback: UserCallback(
         onMaxSeq: () async {
           // 返回登录用户最大Seq
           return 0;
         },
       ),
       groupCallback: GroupCallback(
         onGroupIDList: () async {
           // 返回登录用户所在群聊ID
           return ["group1"];
         },
         onGroupMaxSeq: (groupID) async {
           // 返回群聊最大Seq
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
         onReceive: (msg) {
           if (msg.serverMsgID.isEmpty) return;
           if (msg.conversationType == ConversationType.single) {
             // 接收单聊消息
           } else if (msg.conversationType == ConversationType.group) {
             // 接收群聊消息
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

### 单聊消息

     PathIMCore.instance.pullSingleMsg(seqList: []);

### 群聊消息

     PathIMCore.instance.pullGroupMsg(groupID: "", seqList: []);

## 发送消息

### 单聊消息

     PathIMCore.instance.sendSingleMsg(
       clientMsgID: "1654466766000",
       sendID: "",
       receiveID: "",
       contentType: 1, // 自定义
       content: utf8.encode(""), // 自定义
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

### 群聊消息

     PathIMCore.instance.sendGroupMsg(
       clientMsgID: "1654466766000",
       sendID: "",
       receiveID: "",
       contentType: 1, // 自定义
       content: utf8.encode(""), // 自定义
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
