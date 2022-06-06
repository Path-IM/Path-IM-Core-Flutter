///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SendMsgReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendMsgReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<MsgData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgData', protoName: 'msgData', subBuilder: MsgData.create)
    ..hasRequiredFields = false
  ;

  SendMsgReq._() : super();
  factory SendMsgReq({
    MsgData? msgData,
  }) {
    final _result = create();
    if (msgData != null) {
      _result.msgData = msgData;
    }
    return _result;
  }
  factory SendMsgReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMsgReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendMsgReq clone() => SendMsgReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendMsgReq copyWith(void Function(SendMsgReq) updates) => super.copyWith((message) => updates(message as SendMsgReq)) as SendMsgReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMsgReq create() => SendMsgReq._();
  SendMsgReq createEmptyInstance() => create();
  static $pb.PbList<SendMsgReq> createRepeated() => $pb.PbList<SendMsgReq>();
  @$core.pragma('dart2js:noInline')
  static SendMsgReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMsgReq>(create);
  static SendMsgReq? _defaultInstance;

  @$pb.TagNumber(1)
  MsgData get msgData => $_getN(0);
  @$pb.TagNumber(1)
  set msgData(MsgData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgData() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgData() => clearField(1);
  @$pb.TagNumber(1)
  MsgData ensureMsgData() => $_ensure(0);
}

class MsgData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientMsgID', protoName: 'clientMsgID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverMsgID', protoName: 'serverMsgID')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationType', $pb.PbFieldType.OU3, protoName: 'conversationType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendID', protoName: 'sendID')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiveID', protoName: 'receiveID')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentType', $pb.PbFieldType.OU3, protoName: 'contentType')
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.OY)
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'atUserIDList', protoName: 'atUserIDList')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientTime', protoName: 'clientTime')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverTime', protoName: 'serverTime')
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seq', $pb.PbFieldType.OU3)
    ..aOM<OfflinePush>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offlinePush', protoName: 'offlinePush', subBuilder: OfflinePush.create)
    ..aOM<MsgOptions>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgOptions', protoName: 'msgOptions', subBuilder: MsgOptions.create)
    ..hasRequiredFields = false
  ;

  MsgData._() : super();
  factory MsgData({
    $core.String? clientMsgID,
    $core.String? serverMsgID,
    $core.int? conversationType,
    $core.String? sendID,
    $core.String? receiveID,
    $core.int? contentType,
    $core.List<$core.int>? content,
    $core.Iterable<$core.String>? atUserIDList,
    $fixnum.Int64? clientTime,
    $fixnum.Int64? serverTime,
    $core.int? seq,
    OfflinePush? offlinePush,
    MsgOptions? msgOptions,
  }) {
    final _result = create();
    if (clientMsgID != null) {
      _result.clientMsgID = clientMsgID;
    }
    if (serverMsgID != null) {
      _result.serverMsgID = serverMsgID;
    }
    if (conversationType != null) {
      _result.conversationType = conversationType;
    }
    if (sendID != null) {
      _result.sendID = sendID;
    }
    if (receiveID != null) {
      _result.receiveID = receiveID;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (content != null) {
      _result.content = content;
    }
    if (atUserIDList != null) {
      _result.atUserIDList.addAll(atUserIDList);
    }
    if (clientTime != null) {
      _result.clientTime = clientTime;
    }
    if (serverTime != null) {
      _result.serverTime = serverTime;
    }
    if (seq != null) {
      _result.seq = seq;
    }
    if (offlinePush != null) {
      _result.offlinePush = offlinePush;
    }
    if (msgOptions != null) {
      _result.msgOptions = msgOptions;
    }
    return _result;
  }
  factory MsgData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgData clone() => MsgData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgData copyWith(void Function(MsgData) updates) => super.copyWith((message) => updates(message as MsgData)) as MsgData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgData create() => MsgData._();
  MsgData createEmptyInstance() => create();
  static $pb.PbList<MsgData> createRepeated() => $pb.PbList<MsgData>();
  @$core.pragma('dart2js:noInline')
  static MsgData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgData>(create);
  static MsgData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientMsgID => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientMsgID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientMsgID() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientMsgID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serverMsgID => $_getSZ(1);
  @$pb.TagNumber(2)
  set serverMsgID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServerMsgID() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerMsgID() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get conversationType => $_getIZ(2);
  @$pb.TagNumber(3)
  set conversationType($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConversationType() => $_has(2);
  @$pb.TagNumber(3)
  void clearConversationType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sendID => $_getSZ(3);
  @$pb.TagNumber(4)
  set sendID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSendID() => $_has(3);
  @$pb.TagNumber(4)
  void clearSendID() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get receiveID => $_getSZ(4);
  @$pb.TagNumber(5)
  set receiveID($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReceiveID() => $_has(4);
  @$pb.TagNumber(5)
  void clearReceiveID() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get contentType => $_getIZ(5);
  @$pb.TagNumber(6)
  set contentType($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentType() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentType() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get content => $_getN(6);
  @$pb.TagNumber(7)
  set content($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContent() => $_has(6);
  @$pb.TagNumber(7)
  void clearContent() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get atUserIDList => $_getList(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get clientTime => $_getI64(8);
  @$pb.TagNumber(9)
  set clientTime($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasClientTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearClientTime() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get serverTime => $_getI64(9);
  @$pb.TagNumber(10)
  set serverTime($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasServerTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearServerTime() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get seq => $_getIZ(10);
  @$pb.TagNumber(11)
  set seq($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSeq() => $_has(10);
  @$pb.TagNumber(11)
  void clearSeq() => clearField(11);

  @$pb.TagNumber(12)
  OfflinePush get offlinePush => $_getN(11);
  @$pb.TagNumber(12)
  set offlinePush(OfflinePush v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasOfflinePush() => $_has(11);
  @$pb.TagNumber(12)
  void clearOfflinePush() => clearField(12);
  @$pb.TagNumber(12)
  OfflinePush ensureOfflinePush() => $_ensure(11);

  @$pb.TagNumber(13)
  MsgOptions get msgOptions => $_getN(12);
  @$pb.TagNumber(13)
  set msgOptions(MsgOptions v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasMsgOptions() => $_has(12);
  @$pb.TagNumber(13)
  void clearMsgOptions() => clearField(13);
  @$pb.TagNumber(13)
  MsgOptions ensureMsgOptions() => $_ensure(12);
}

class OfflinePush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OfflinePush', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ex')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iOSPushSound', protoName: 'iOSPushSound')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iOSBadgeCount', protoName: 'iOSBadgeCount')
    ..hasRequiredFields = false
  ;

  OfflinePush._() : super();
  factory OfflinePush({
    $core.String? title,
    $core.String? desc,
    $core.String? ex,
    $core.String? iOSPushSound,
    $core.bool? iOSBadgeCount,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (ex != null) {
      _result.ex = ex;
    }
    if (iOSPushSound != null) {
      _result.iOSPushSound = iOSPushSound;
    }
    if (iOSBadgeCount != null) {
      _result.iOSBadgeCount = iOSBadgeCount;
    }
    return _result;
  }
  factory OfflinePush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OfflinePush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OfflinePush clone() => OfflinePush()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OfflinePush copyWith(void Function(OfflinePush) updates) => super.copyWith((message) => updates(message as OfflinePush)) as OfflinePush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OfflinePush create() => OfflinePush._();
  OfflinePush createEmptyInstance() => create();
  static $pb.PbList<OfflinePush> createRepeated() => $pb.PbList<OfflinePush>();
  @$core.pragma('dart2js:noInline')
  static OfflinePush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OfflinePush>(create);
  static OfflinePush? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ex => $_getSZ(2);
  @$pb.TagNumber(3)
  set ex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEx() => $_has(2);
  @$pb.TagNumber(3)
  void clearEx() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get iOSPushSound => $_getSZ(3);
  @$pb.TagNumber(4)
  set iOSPushSound($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIOSPushSound() => $_has(3);
  @$pb.TagNumber(4)
  void clearIOSPushSound() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get iOSBadgeCount => $_getBF(4);
  @$pb.TagNumber(5)
  set iOSBadgeCount($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIOSBadgeCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearIOSBadgeCount() => clearField(5);
}

class MsgOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'persistent')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'history')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unreadCount', protoName: 'unreadCount')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateConversation', protoName: 'updateConversation')
    ..hasRequiredFields = false
  ;

  MsgOptions._() : super();
  factory MsgOptions({
    $core.bool? persistent,
    $core.bool? history,
    $core.bool? unreadCount,
    $core.bool? updateConversation,
  }) {
    final _result = create();
    if (persistent != null) {
      _result.persistent = persistent;
    }
    if (history != null) {
      _result.history = history;
    }
    if (unreadCount != null) {
      _result.unreadCount = unreadCount;
    }
    if (updateConversation != null) {
      _result.updateConversation = updateConversation;
    }
    return _result;
  }
  factory MsgOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgOptions clone() => MsgOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgOptions copyWith(void Function(MsgOptions) updates) => super.copyWith((message) => updates(message as MsgOptions)) as MsgOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgOptions create() => MsgOptions._();
  MsgOptions createEmptyInstance() => create();
  static $pb.PbList<MsgOptions> createRepeated() => $pb.PbList<MsgOptions>();
  @$core.pragma('dart2js:noInline')
  static MsgOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgOptions>(create);
  static MsgOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get persistent => $_getBF(0);
  @$pb.TagNumber(1)
  set persistent($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPersistent() => $_has(0);
  @$pb.TagNumber(1)
  void clearPersistent() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get history => $_getBF(1);
  @$pb.TagNumber(2)
  set history($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHistory() => $_has(1);
  @$pb.TagNumber(2)
  void clearHistory() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get unreadCount => $_getBF(2);
  @$pb.TagNumber(3)
  set unreadCount($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnreadCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnreadCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get updateConversation => $_getBF(3);
  @$pb.TagNumber(4)
  set updateConversation($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateConversation() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateConversation() => clearField(4);
}

class SendMsgResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendMsgResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientMsgID', protoName: 'clientMsgID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverMsgID', protoName: 'serverMsgID')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationType', $pb.PbFieldType.OU3, protoName: 'conversationType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiveID', protoName: 'receiveID')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentType', $pb.PbFieldType.OU3, protoName: 'contentType')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverTime', protoName: 'serverTime')
    ..hasRequiredFields = false
  ;

  SendMsgResp._() : super();
  factory SendMsgResp({
    $core.String? clientMsgID,
    $core.String? serverMsgID,
    $core.int? conversationType,
    $core.String? receiveID,
    $core.int? contentType,
    $fixnum.Int64? serverTime,
  }) {
    final _result = create();
    if (clientMsgID != null) {
      _result.clientMsgID = clientMsgID;
    }
    if (serverMsgID != null) {
      _result.serverMsgID = serverMsgID;
    }
    if (conversationType != null) {
      _result.conversationType = conversationType;
    }
    if (receiveID != null) {
      _result.receiveID = receiveID;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (serverTime != null) {
      _result.serverTime = serverTime;
    }
    return _result;
  }
  factory SendMsgResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendMsgResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendMsgResp clone() => SendMsgResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendMsgResp copyWith(void Function(SendMsgResp) updates) => super.copyWith((message) => updates(message as SendMsgResp)) as SendMsgResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendMsgResp create() => SendMsgResp._();
  SendMsgResp createEmptyInstance() => create();
  static $pb.PbList<SendMsgResp> createRepeated() => $pb.PbList<SendMsgResp>();
  @$core.pragma('dart2js:noInline')
  static SendMsgResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMsgResp>(create);
  static SendMsgResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientMsgID => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientMsgID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientMsgID() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientMsgID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serverMsgID => $_getSZ(1);
  @$pb.TagNumber(2)
  set serverMsgID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServerMsgID() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerMsgID() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get conversationType => $_getIZ(2);
  @$pb.TagNumber(3)
  set conversationType($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConversationType() => $_has(2);
  @$pb.TagNumber(3)
  void clearConversationType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get receiveID => $_getSZ(3);
  @$pb.TagNumber(4)
  set receiveID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReceiveID() => $_has(3);
  @$pb.TagNumber(4)
  void clearReceiveID() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get contentType => $_getIZ(4);
  @$pb.TagNumber(5)
  set contentType($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentType() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get serverTime => $_getI64(5);
  @$pb.TagNumber(6)
  set serverTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasServerTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearServerTime() => clearField(6);
}

