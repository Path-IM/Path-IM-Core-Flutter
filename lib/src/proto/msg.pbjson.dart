///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sendMsgReqDescriptor instead')
const SendMsgReq$json = const {
  '1': 'SendMsgReq',
  '2': const [
    const {'1': 'msgData', '3': 1, '4': 1, '5': 11, '6': '.pb.MsgData', '10': 'msgData'},
  ],
};

/// Descriptor for `SendMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMsgReqDescriptor = $convert.base64Decode('CgpTZW5kTXNnUmVxEiUKB21zZ0RhdGEYASABKAsyCy5wYi5Nc2dEYXRhUgdtc2dEYXRh');
@$core.Deprecated('Use msgDataDescriptor instead')
const MsgData$json = const {
  '1': 'MsgData',
  '2': const [
    const {'1': 'clientMsgID', '3': 1, '4': 1, '5': 9, '10': 'clientMsgID'},
    const {'1': 'serverMsgID', '3': 2, '4': 1, '5': 9, '10': 'serverMsgID'},
    const {'1': 'conversationType', '3': 3, '4': 1, '5': 13, '10': 'conversationType'},
    const {'1': 'sendID', '3': 4, '4': 1, '5': 9, '10': 'sendID'},
    const {'1': 'receiveID', '3': 5, '4': 1, '5': 9, '10': 'receiveID'},
    const {'1': 'contentType', '3': 6, '4': 1, '5': 13, '10': 'contentType'},
    const {'1': 'content', '3': 7, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'atUserIDList', '3': 8, '4': 3, '5': 9, '10': 'atUserIDList'},
    const {'1': 'clientTime', '3': 9, '4': 1, '5': 3, '10': 'clientTime'},
    const {'1': 'serverTime', '3': 10, '4': 1, '5': 3, '10': 'serverTime'},
    const {'1': 'seq', '3': 11, '4': 1, '5': 13, '10': 'seq'},
    const {'1': 'offlinePush', '3': 12, '4': 1, '5': 11, '6': '.pb.OfflinePush', '10': 'offlinePush'},
    const {'1': 'msgOptions', '3': 13, '4': 1, '5': 11, '6': '.pb.MsgOptions', '10': 'msgOptions'},
  ],
};

/// Descriptor for `MsgData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDataDescriptor = $convert.base64Decode('CgdNc2dEYXRhEiAKC2NsaWVudE1zZ0lEGAEgASgJUgtjbGllbnRNc2dJRBIgCgtzZXJ2ZXJNc2dJRBgCIAEoCVILc2VydmVyTXNnSUQSKgoQY29udmVyc2F0aW9uVHlwZRgDIAEoDVIQY29udmVyc2F0aW9uVHlwZRIWCgZzZW5kSUQYBCABKAlSBnNlbmRJRBIcCglyZWNlaXZlSUQYBSABKAlSCXJlY2VpdmVJRBIgCgtjb250ZW50VHlwZRgGIAEoDVILY29udGVudFR5cGUSGAoHY29udGVudBgHIAEoDFIHY29udGVudBIiCgxhdFVzZXJJRExpc3QYCCADKAlSDGF0VXNlcklETGlzdBIeCgpjbGllbnRUaW1lGAkgASgDUgpjbGllbnRUaW1lEh4KCnNlcnZlclRpbWUYCiABKANSCnNlcnZlclRpbWUSEAoDc2VxGAsgASgNUgNzZXESMQoLb2ZmbGluZVB1c2gYDCABKAsyDy5wYi5PZmZsaW5lUHVzaFILb2ZmbGluZVB1c2gSLgoKbXNnT3B0aW9ucxgNIAEoCzIOLnBiLk1zZ09wdGlvbnNSCm1zZ09wdGlvbnM=');
@$core.Deprecated('Use offlinePushDescriptor instead')
const OfflinePush$json = const {
  '1': 'OfflinePush',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'ex', '3': 3, '4': 1, '5': 9, '10': 'ex'},
    const {'1': 'iOSPushSound', '3': 4, '4': 1, '5': 9, '10': 'iOSPushSound'},
    const {'1': 'iOSBadgeCount', '3': 5, '4': 1, '5': 8, '10': 'iOSBadgeCount'},
  ],
};

/// Descriptor for `OfflinePush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offlinePushDescriptor = $convert.base64Decode('CgtPZmZsaW5lUHVzaBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSEgoEZGVzYxgCIAEoCVIEZGVzYxIOCgJleBgDIAEoCVICZXgSIgoMaU9TUHVzaFNvdW5kGAQgASgJUgxpT1NQdXNoU291bmQSJAoNaU9TQmFkZ2VDb3VudBgFIAEoCFINaU9TQmFkZ2VDb3VudA==');
@$core.Deprecated('Use msgOptionsDescriptor instead')
const MsgOptions$json = const {
  '1': 'MsgOptions',
  '2': const [
    const {'1': 'persistent', '3': 1, '4': 1, '5': 8, '10': 'persistent'},
    const {'1': 'history', '3': 2, '4': 1, '5': 8, '10': 'history'},
    const {'1': 'local', '3': 3, '4': 1, '5': 8, '10': 'local'},
    const {'1': 'updateUnreadCount', '3': 4, '4': 1, '5': 8, '10': 'updateUnreadCount'},
    const {'1': 'updateConversation', '3': 5, '4': 1, '5': 8, '10': 'updateConversation'},
  ],
};

/// Descriptor for `MsgOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgOptionsDescriptor = $convert.base64Decode('CgpNc2dPcHRpb25zEh4KCnBlcnNpc3RlbnQYASABKAhSCnBlcnNpc3RlbnQSGAoHaGlzdG9yeRgCIAEoCFIHaGlzdG9yeRIUCgVsb2NhbBgDIAEoCFIFbG9jYWwSLAoRdXBkYXRlVW5yZWFkQ291bnQYBCABKAhSEXVwZGF0ZVVucmVhZENvdW50Ei4KEnVwZGF0ZUNvbnZlcnNhdGlvbhgFIAEoCFISdXBkYXRlQ29udmVyc2F0aW9u');
@$core.Deprecated('Use sendMsgRespDescriptor instead')
const SendMsgResp$json = const {
  '1': 'SendMsgResp',
  '2': const [
    const {'1': 'clientMsgID', '3': 1, '4': 1, '5': 9, '10': 'clientMsgID'},
    const {'1': 'serverMsgID', '3': 2, '4': 1, '5': 9, '10': 'serverMsgID'},
    const {'1': 'conversationType', '3': 3, '4': 1, '5': 13, '10': 'conversationType'},
    const {'1': 'receiveID', '3': 4, '4': 1, '5': 9, '10': 'receiveID'},
    const {'1': 'contentType', '3': 5, '4': 1, '5': 13, '10': 'contentType'},
    const {'1': 'serverTime', '3': 6, '4': 1, '5': 3, '10': 'serverTime'},
  ],
};

/// Descriptor for `SendMsgResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMsgRespDescriptor = $convert.base64Decode('CgtTZW5kTXNnUmVzcBIgCgtjbGllbnRNc2dJRBgBIAEoCVILY2xpZW50TXNnSUQSIAoLc2VydmVyTXNnSUQYAiABKAlSC3NlcnZlck1zZ0lEEioKEGNvbnZlcnNhdGlvblR5cGUYAyABKA1SEGNvbnZlcnNhdGlvblR5cGUSHAoJcmVjZWl2ZUlEGAQgASgJUglyZWNlaXZlSUQSIAoLY29udGVudFR5cGUYBSABKA1SC2NvbnRlbnRUeXBlEh4KCnNlcnZlclRpbWUYBiABKANSCnNlcnZlclRpbWU=');
