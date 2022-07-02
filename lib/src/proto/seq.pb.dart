///
//  Generated code. Do not modify.
//  source: seq.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetMinAndMaxSeqReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMinAndMaxSeqReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetMinAndMaxSeqReq._() : super();

  factory GetMinAndMaxSeqReq() => create();

  factory GetMinAndMaxSeqReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMinAndMaxSeqReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMinAndMaxSeqReq clone() => GetMinAndMaxSeqReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMinAndMaxSeqReq copyWith(void Function(GetMinAndMaxSeqReq) updates) =>
      super.copyWith((message) => updates(message as GetMinAndMaxSeqReq))
          as GetMinAndMaxSeqReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxSeqReq create() => GetMinAndMaxSeqReq._();

  GetMinAndMaxSeqReq createEmptyInstance() => create();

  static $pb.PbList<GetMinAndMaxSeqReq> createRepeated() =>
      $pb.PbList<GetMinAndMaxSeqReq>();

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxSeqReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMinAndMaxSeqReq>(create);
  static GetMinAndMaxSeqReq? _defaultInstance;
}

class GetMinAndMaxSeqResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMinAndMaxSeqResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minSeq',
        $pb.PbFieldType.OU3,
        protoName: 'minSeq')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxSeq',
        $pb.PbFieldType.OU3,
        protoName: 'maxSeq')
    ..hasRequiredFields = false;

  GetMinAndMaxSeqResp._() : super();

  factory GetMinAndMaxSeqResp({
    $core.int? minSeq,
    $core.int? maxSeq,
  }) {
    final _result = create();
    if (minSeq != null) {
      _result.minSeq = minSeq;
    }
    if (maxSeq != null) {
      _result.maxSeq = maxSeq;
    }
    return _result;
  }

  factory GetMinAndMaxSeqResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMinAndMaxSeqResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMinAndMaxSeqResp clone() => GetMinAndMaxSeqResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMinAndMaxSeqResp copyWith(void Function(GetMinAndMaxSeqResp) updates) =>
      super.copyWith((message) => updates(message as GetMinAndMaxSeqResp))
          as GetMinAndMaxSeqResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxSeqResp create() => GetMinAndMaxSeqResp._();

  GetMinAndMaxSeqResp createEmptyInstance() => create();

  static $pb.PbList<GetMinAndMaxSeqResp> createRepeated() =>
      $pb.PbList<GetMinAndMaxSeqResp>();

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxSeqResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMinAndMaxSeqResp>(create);
  static GetMinAndMaxSeqResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get minSeq => $_getIZ(0);

  @$pb.TagNumber(1)
  set minSeq($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMinSeq() => $_has(0);

  @$pb.TagNumber(1)
  void clearMinSeq() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxSeq => $_getIZ(1);

  @$pb.TagNumber(2)
  set maxSeq($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMaxSeq() => $_has(1);

  @$pb.TagNumber(2)
  void clearMaxSeq() => clearField(2);
}

class GetMinAndMaxGroupSeqReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMinAndMaxGroupSeqReq',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupIDList',
        protoName: 'groupIDList')
    ..hasRequiredFields = false;

  GetMinAndMaxGroupSeqReq._() : super();

  factory GetMinAndMaxGroupSeqReq({
    $core.Iterable<$core.String>? groupIDList,
  }) {
    final _result = create();
    if (groupIDList != null) {
      _result.groupIDList.addAll(groupIDList);
    }
    return _result;
  }

  factory GetMinAndMaxGroupSeqReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMinAndMaxGroupSeqReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMinAndMaxGroupSeqReq clone() =>
      GetMinAndMaxGroupSeqReq()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMinAndMaxGroupSeqReq copyWith(
          void Function(GetMinAndMaxGroupSeqReq) updates) =>
      super.copyWith((message) => updates(message as GetMinAndMaxGroupSeqReq))
          as GetMinAndMaxGroupSeqReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxGroupSeqReq create() => GetMinAndMaxGroupSeqReq._();

  GetMinAndMaxGroupSeqReq createEmptyInstance() => create();

  static $pb.PbList<GetMinAndMaxGroupSeqReq> createRepeated() =>
      $pb.PbList<GetMinAndMaxGroupSeqReq>();

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxGroupSeqReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMinAndMaxGroupSeqReq>(create);
  static GetMinAndMaxGroupSeqReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get groupIDList => $_getList(0);
}

class GetMinAndMaxGroupSeqResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMinAndMaxGroupSeqResp',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..pc<GetMinAndMaxGroupSeqItem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'groupSeqList',
        $pb.PbFieldType.PM,
        protoName: 'groupSeqList',
        subBuilder: GetMinAndMaxGroupSeqItem.create)
    ..hasRequiredFields = false;

  GetMinAndMaxGroupSeqResp._() : super();

  factory GetMinAndMaxGroupSeqResp({
    $core.Iterable<GetMinAndMaxGroupSeqItem>? groupSeqList,
  }) {
    final _result = create();
    if (groupSeqList != null) {
      _result.groupSeqList.addAll(groupSeqList);
    }
    return _result;
  }

  factory GetMinAndMaxGroupSeqResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMinAndMaxGroupSeqResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMinAndMaxGroupSeqResp clone() =>
      GetMinAndMaxGroupSeqResp()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMinAndMaxGroupSeqResp copyWith(
          void Function(GetMinAndMaxGroupSeqResp) updates) =>
      super.copyWith((message) => updates(message as GetMinAndMaxGroupSeqResp))
          as GetMinAndMaxGroupSeqResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxGroupSeqResp create() => GetMinAndMaxGroupSeqResp._();

  GetMinAndMaxGroupSeqResp createEmptyInstance() => create();

  static $pb.PbList<GetMinAndMaxGroupSeqResp> createRepeated() =>
      $pb.PbList<GetMinAndMaxGroupSeqResp>();

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxGroupSeqResp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMinAndMaxGroupSeqResp>(create);
  static GetMinAndMaxGroupSeqResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetMinAndMaxGroupSeqItem> get groupSeqList => $_getList(0);
}

class GetMinAndMaxGroupSeqItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMinAndMaxGroupSeqItem',
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
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minSeq',
        $pb.PbFieldType.OU3,
        protoName: 'minSeq')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxSeq',
        $pb.PbFieldType.OU3,
        protoName: 'maxSeq')
    ..hasRequiredFields = false;

  GetMinAndMaxGroupSeqItem._() : super();

  factory GetMinAndMaxGroupSeqItem({
    $core.String? groupID,
    $core.int? minSeq,
    $core.int? maxSeq,
  }) {
    final _result = create();
    if (groupID != null) {
      _result.groupID = groupID;
    }
    if (minSeq != null) {
      _result.minSeq = minSeq;
    }
    if (maxSeq != null) {
      _result.maxSeq = maxSeq;
    }
    return _result;
  }

  factory GetMinAndMaxGroupSeqItem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory GetMinAndMaxGroupSeqItem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMinAndMaxGroupSeqItem clone() =>
      GetMinAndMaxGroupSeqItem()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMinAndMaxGroupSeqItem copyWith(
          void Function(GetMinAndMaxGroupSeqItem) updates) =>
      super.copyWith((message) => updates(message as GetMinAndMaxGroupSeqItem))
          as GetMinAndMaxGroupSeqItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxGroupSeqItem create() => GetMinAndMaxGroupSeqItem._();

  GetMinAndMaxGroupSeqItem createEmptyInstance() => create();

  static $pb.PbList<GetMinAndMaxGroupSeqItem> createRepeated() =>
      $pb.PbList<GetMinAndMaxGroupSeqItem>();

  @$core.pragma('dart2js:noInline')
  static GetMinAndMaxGroupSeqItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMinAndMaxGroupSeqItem>(create);
  static GetMinAndMaxGroupSeqItem? _defaultInstance;

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
  $core.int get minSeq => $_getIZ(1);

  @$pb.TagNumber(2)
  set minSeq($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinSeq() => $_has(1);

  @$pb.TagNumber(2)
  void clearMinSeq() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxSeq => $_getIZ(2);

  @$pb.TagNumber(3)
  set maxSeq($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMaxSeq() => $_has(2);

  @$pb.TagNumber(3)
  void clearMaxSeq() => clearField(3);
}
