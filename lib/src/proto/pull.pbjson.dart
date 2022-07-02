///
//  Generated code. Do not modify.
//  source: pull.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pullMsgBySeqListReqDescriptor instead')
const PullMsgBySeqListReq$json = const {
  '1': 'PullMsgBySeqListReq',
  '2': const [
    const {'1': 'seqList', '3': 1, '4': 3, '5': 13, '10': 'seqList'},
  ],
};

/// Descriptor for `PullMsgBySeqListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullMsgBySeqListReqDescriptor =
    $convert.base64Decode(
        'ChNQdWxsTXNnQnlTZXFMaXN0UmVxEhgKB3NlcUxpc3QYASADKA1SB3NlcUxpc3Q=');
@$core.Deprecated('Use pullMsgByGroupSeqListReqDescriptor instead')
const PullMsgByGroupSeqListReq$json = const {
  '1': 'PullMsgByGroupSeqListReq',
  '2': const [
    const {'1': 'groupID', '3': 1, '4': 1, '5': 9, '10': 'groupID'},
    const {'1': 'seqList', '3': 2, '4': 3, '5': 13, '10': 'seqList'},
  ],
};

/// Descriptor for `PullMsgByGroupSeqListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullMsgByGroupSeqListReqDescriptor =
    $convert.base64Decode(
        'ChhQdWxsTXNnQnlHcm91cFNlcUxpc3RSZXESGAoHZ3JvdXBJRBgBIAEoCVIHZ3JvdXBJRBIYCgdzZXFMaXN0GAIgAygNUgdzZXFMaXN0');
@$core.Deprecated('Use pullMsgListRespDescriptor instead')
const PullMsgListResp$json = const {
  '1': 'PullMsgListResp',
  '2': const [
    const {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.MsgData',
      '10': 'list'
    },
  ],
};

/// Descriptor for `PullMsgListResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullMsgListRespDescriptor = $convert.base64Decode(
    'Cg9QdWxsTXNnTGlzdFJlc3ASHwoEbGlzdBgBIAMoCzILLnBiLk1zZ0RhdGFSBGxpc3Q=');
