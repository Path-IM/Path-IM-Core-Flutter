///
//  Generated code. Do not modify.
//  source: pull.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'msg.pb.dart' as $0;

class PullMsgBySeqListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PullMsgBySeqListReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..p<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'seqList',
        $pb.PbFieldType.PU3,
        protoName: 'seqList')
    ..hasRequiredFields = false;

  PullMsgBySeqListReq._() : super();

  factory PullMsgBySeqListReq({
    $core.Iterable<$core.int>? seqList,
  }) {
    final _result = create();
    if (seqList != null) {
      _result.seqList.addAll(seqList);
    }
    return _result;
  }

  factory PullMsgBySeqListReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory PullMsgBySeqListReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PullMsgBySeqListReq clone() => PullMsgBySeqListReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PullMsgBySeqListReq copyWith(void Function(PullMsgBySeqListReq) updates) =>
      super.copyWith((message) => updates(message as PullMsgBySeqListReq))
          as PullMsgBySeqListReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PullMsgBySeqListReq create() => PullMsgBySeqListReq._();

  PullMsgBySeqListReq createEmptyInstance() => create();

  static $pb.PbList<PullMsgBySeqListReq> createRepeated() =>
      $pb.PbList<PullMsgBySeqListReq>();

  @$core.pragma('dart2js:noInline')
  static PullMsgBySeqListReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PullMsgBySeqListReq>(create);
  static PullMsgBySeqListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get seqList => $_getList(0);
}

class PullMsgByGroupSeqListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PullMsgByGroupSeqListReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupID',
        protoName: 'groupID')
    ..p<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'seqList',
        $pb.PbFieldType.PU3,
        protoName: 'seqList')
    ..hasRequiredFields = false;

  PullMsgByGroupSeqListReq._() : super();

  factory PullMsgByGroupSeqListReq({
    $core.String? groupID,
    $core.Iterable<$core.int>? seqList,
  }) {
    final _result = create();
    if (groupID != null) {
      _result.groupID = groupID;
    }
    if (seqList != null) {
      _result.seqList.addAll(seqList);
    }
    return _result;
  }

  factory PullMsgByGroupSeqListReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory PullMsgByGroupSeqListReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PullMsgByGroupSeqListReq clone() =>
      PullMsgByGroupSeqListReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PullMsgByGroupSeqListReq copyWith(
          void Function(PullMsgByGroupSeqListReq) updates) =>
      super.copyWith((message) => updates(message as PullMsgByGroupSeqListReq))
          as PullMsgByGroupSeqListReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PullMsgByGroupSeqListReq create() => PullMsgByGroupSeqListReq._();

  PullMsgByGroupSeqListReq createEmptyInstance() => create();

  static $pb.PbList<PullMsgByGroupSeqListReq> createRepeated() =>
      $pb.PbList<PullMsgByGroupSeqListReq>();

  @$core.pragma('dart2js:noInline')
  static PullMsgByGroupSeqListReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PullMsgByGroupSeqListReq>(create);
  static PullMsgByGroupSeqListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupID => $_getSZ(0);

  @$pb.TagNumber(1)
  set groupID($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGroupID() => $_has(0);

  @$pb.TagNumber(1)
  void clearGroupID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get seqList => $_getList(1);
}

class PullMsgListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PullMsgListResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..pc<$0.MsgData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'list',
        $pb.PbFieldType.PM,
        subBuilder: $0.MsgData.create)
    ..hasRequiredFields = false;

  PullMsgListResp._() : super();

  factory PullMsgListResp({
    $core.Iterable<$0.MsgData>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }

  factory PullMsgListResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory PullMsgListResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PullMsgListResp clone() => PullMsgListResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PullMsgListResp copyWith(void Function(PullMsgListResp) updates) =>
      super.copyWith((message) => updates(message as PullMsgListResp))
          as PullMsgListResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PullMsgListResp create() => PullMsgListResp._();

  PullMsgListResp createEmptyInstance() => create();

  static $pb.PbList<PullMsgListResp> createRepeated() =>
      $pb.PbList<PullMsgListResp>();

  @$core.pragma('dart2js:noInline')
  static PullMsgListResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PullMsgListResp>(create);
  static PullMsgListResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.MsgData> get list => $_getList(0);
}
