///
//  Generated code. Do not modify.
//  source: transport.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use codeDescriptor instead')
const Code$json = const {
  '1': 'Code',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'GET_PROPERTIES_NOT_IMPLEMENTED', '2': 1},
    const {'1': 'GET_PARAMETERS_NOT_IMPLEMENTED', '2': 2},
    const {'1': 'FIT_NOT_IMPLEMENTED', '2': 3},
    const {'1': 'EVALUATE_NOT_IMPLEMENTED', '2': 4},
  ],
};

/// Descriptor for `Code`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List codeDescriptor = $convert.base64Decode('CgRDb2RlEgYKAk9LEAASIgoeR0VUX1BST1BFUlRJRVNfTk9UX0lNUExFTUVOVEVEEAESIgoeR0VUX1BBUkFNRVRFUlNfTk9UX0lNUExFTUVOVEVEEAISFwoTRklUX05PVF9JTVBMRU1FTlRFRBADEhwKGEVWQUxVQVRFX05PVF9JTVBMRU1FTlRFRBAE');
@$core.Deprecated('Use reasonDescriptor instead')
const Reason$json = const {
  '1': 'Reason',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'RECONNECT', '2': 1},
    const {'1': 'POWER_DISCONNECTED', '2': 2},
    const {'1': 'WIFI_UNAVAILABLE', '2': 3},
    const {'1': 'ACK', '2': 4},
  ],
};

/// Descriptor for `Reason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List reasonDescriptor = $convert.base64Decode('CgZSZWFzb24SCwoHVU5LTk9XThAAEg0KCVJFQ09OTkVDVBABEhYKElBPV0VSX0RJU0NPTk5FQ1RFRBACEhQKEFdJRklfVU5BVkFJTEFCTEUQAxIHCgNBQ0sQBA==');
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.flwr.proto.Code', '10': 'code'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSJAoEY29kZRgBIAEoDjIQLmZsd3IucHJvdG8uQ29kZVIEY29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use parametersDescriptor instead')
const Parameters$json = const {
  '1': 'Parameters',
  '2': const [
    const {'1': 'tensors', '3': 1, '4': 3, '5': 12, '10': 'tensors'},
    const {'1': 'tensor_type', '3': 2, '4': 1, '5': 9, '10': 'tensorType'},
  ],
};

/// Descriptor for `Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parametersDescriptor = $convert.base64Decode('CgpQYXJhbWV0ZXJzEhgKB3RlbnNvcnMYASADKAxSB3RlbnNvcnMSHwoLdGVuc29yX3R5cGUYAiABKAlSCnRlbnNvclR5cGU=');
@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = const {
  '1': 'ServerMessage',
  '2': const [
    const {'1': 'reconnect_ins', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.ServerMessage.ReconnectIns', '9': 0, '10': 'reconnectIns'},
    const {'1': 'get_properties_ins', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.ServerMessage.GetPropertiesIns', '9': 0, '10': 'getPropertiesIns'},
    const {'1': 'get_parameters_ins', '3': 3, '4': 1, '5': 11, '6': '.flwr.proto.ServerMessage.GetParametersIns', '9': 0, '10': 'getParametersIns'},
    const {'1': 'fit_ins', '3': 4, '4': 1, '5': 11, '6': '.flwr.proto.ServerMessage.FitIns', '9': 0, '10': 'fitIns'},
    const {'1': 'evaluate_ins', '3': 5, '4': 1, '5': 11, '6': '.flwr.proto.ServerMessage.EvaluateIns', '9': 0, '10': 'evaluateIns'},
  ],
  '3': const [ServerMessage_ReconnectIns$json, ServerMessage_GetPropertiesIns$json, ServerMessage_GetParametersIns$json, ServerMessage_FitIns$json, ServerMessage_EvaluateIns$json],
  '8': const [
    const {'1': 'msg'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_ReconnectIns$json = const {
  '1': 'ReconnectIns',
  '2': const [
    const {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
  ],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_GetPropertiesIns$json = const {
  '1': 'GetPropertiesIns',
  '2': const [
    const {'1': 'config', '3': 1, '4': 3, '5': 11, '6': '.flwr.proto.ServerMessage.GetPropertiesIns.ConfigEntry', '10': 'config'},
  ],
  '3': const [ServerMessage_GetPropertiesIns_ConfigEntry$json],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_GetPropertiesIns_ConfigEntry$json = const {
  '1': 'ConfigEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Scalar', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_GetParametersIns$json = const {
  '1': 'GetParametersIns',
  '2': const [
    const {'1': 'config', '3': 1, '4': 3, '5': 11, '6': '.flwr.proto.ServerMessage.GetParametersIns.ConfigEntry', '10': 'config'},
  ],
  '3': const [ServerMessage_GetParametersIns_ConfigEntry$json],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_GetParametersIns_ConfigEntry$json = const {
  '1': 'ConfigEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Scalar', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_FitIns$json = const {
  '1': 'FitIns',
  '2': const [
    const {'1': 'parameters', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.Parameters', '10': 'parameters'},
    const {'1': 'config', '3': 2, '4': 3, '5': 11, '6': '.flwr.proto.ServerMessage.FitIns.ConfigEntry', '10': 'config'},
  ],
  '3': const [ServerMessage_FitIns_ConfigEntry$json],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_FitIns_ConfigEntry$json = const {
  '1': 'ConfigEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Scalar', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_EvaluateIns$json = const {
  '1': 'EvaluateIns',
  '2': const [
    const {'1': 'parameters', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.Parameters', '10': 'parameters'},
    const {'1': 'config', '3': 2, '4': 3, '5': 11, '6': '.flwr.proto.ServerMessage.EvaluateIns.ConfigEntry', '10': 'config'},
  ],
  '3': const [ServerMessage_EvaluateIns_ConfigEntry$json],
};

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage_EvaluateIns_ConfigEntry$json = const {
  '1': 'ConfigEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Scalar', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode('Cg1TZXJ2ZXJNZXNzYWdlEk0KDXJlY29ubmVjdF9pbnMYASABKAsyJi5mbHdyLnByb3RvLlNlcnZlck1lc3NhZ2UuUmVjb25uZWN0SW5zSABSDHJlY29ubmVjdElucxJaChJnZXRfcHJvcGVydGllc19pbnMYAiABKAsyKi5mbHdyLnByb3RvLlNlcnZlck1lc3NhZ2UuR2V0UHJvcGVydGllc0luc0gAUhBnZXRQcm9wZXJ0aWVzSW5zEloKEmdldF9wYXJhbWV0ZXJzX2lucxgDIAEoCzIqLmZsd3IucHJvdG8uU2VydmVyTWVzc2FnZS5HZXRQYXJhbWV0ZXJzSW5zSABSEGdldFBhcmFtZXRlcnNJbnMSOwoHZml0X2lucxgEIAEoCzIgLmZsd3IucHJvdG8uU2VydmVyTWVzc2FnZS5GaXRJbnNIAFIGZml0SW5zEkoKDGV2YWx1YXRlX2lucxgFIAEoCzIlLmZsd3IucHJvdG8uU2VydmVyTWVzc2FnZS5FdmFsdWF0ZUluc0gAUgtldmFsdWF0ZUlucxooCgxSZWNvbm5lY3RJbnMSGAoHc2Vjb25kcxgBIAEoA1IHc2Vjb25kcxqxAQoQR2V0UHJvcGVydGllc0lucxJOCgZjb25maWcYASADKAsyNi5mbHdyLnByb3RvLlNlcnZlck1lc3NhZ2UuR2V0UHJvcGVydGllc0lucy5Db25maWdFbnRyeVIGY29uZmlnGk0KC0NvbmZpZ0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EigKBXZhbHVlGAIgASgLMhIuZmx3ci5wcm90by5TY2FsYXJSBXZhbHVlOgI4ARqxAQoQR2V0UGFyYW1ldGVyc0lucxJOCgZjb25maWcYASADKAsyNi5mbHdyLnByb3RvLlNlcnZlck1lc3NhZ2UuR2V0UGFyYW1ldGVyc0lucy5Db25maWdFbnRyeVIGY29uZmlnGk0KC0NvbmZpZ0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EigKBXZhbHVlGAIgASgLMhIuZmx3ci5wcm90by5TY2FsYXJSBXZhbHVlOgI4ARrVAQoGRml0SW5zEjYKCnBhcmFtZXRlcnMYASABKAsyFi5mbHdyLnByb3RvLlBhcmFtZXRlcnNSCnBhcmFtZXRlcnMSRAoGY29uZmlnGAIgAygLMiwuZmx3ci5wcm90by5TZXJ2ZXJNZXNzYWdlLkZpdElucy5Db25maWdFbnRyeVIGY29uZmlnGk0KC0NvbmZpZ0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EigKBXZhbHVlGAIgASgLMhIuZmx3ci5wcm90by5TY2FsYXJSBXZhbHVlOgI4ARrfAQoLRXZhbHVhdGVJbnMSNgoKcGFyYW1ldGVycxgBIAEoCzIWLmZsd3IucHJvdG8uUGFyYW1ldGVyc1IKcGFyYW1ldGVycxJJCgZjb25maWcYAiADKAsyMS5mbHdyLnByb3RvLlNlcnZlck1lc3NhZ2UuRXZhbHVhdGVJbnMuQ29uZmlnRW50cnlSBmNvbmZpZxpNCgtDb25maWdFbnRyeRIQCgNrZXkYASABKAlSA2tleRIoCgV2YWx1ZRgCIAEoCzISLmZsd3IucHJvdG8uU2NhbGFyUgV2YWx1ZToCOAFCBQoDbXNn');
@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage$json = const {
  '1': 'ClientMessage',
  '2': const [
    const {'1': 'disconnect_res', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.ClientMessage.DisconnectRes', '9': 0, '10': 'disconnectRes'},
    const {'1': 'get_properties_res', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.ClientMessage.GetPropertiesRes', '9': 0, '10': 'getPropertiesRes'},
    const {'1': 'get_parameters_res', '3': 3, '4': 1, '5': 11, '6': '.flwr.proto.ClientMessage.GetParametersRes', '9': 0, '10': 'getParametersRes'},
    const {'1': 'fit_res', '3': 4, '4': 1, '5': 11, '6': '.flwr.proto.ClientMessage.FitRes', '9': 0, '10': 'fitRes'},
    const {'1': 'evaluate_res', '3': 5, '4': 1, '5': 11, '6': '.flwr.proto.ClientMessage.EvaluateRes', '9': 0, '10': 'evaluateRes'},
  ],
  '3': const [ClientMessage_DisconnectRes$json, ClientMessage_GetPropertiesRes$json, ClientMessage_GetParametersRes$json, ClientMessage_FitRes$json, ClientMessage_EvaluateRes$json],
  '8': const [
    const {'1': 'msg'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_DisconnectRes$json = const {
  '1': 'DisconnectRes',
  '2': const [
    const {'1': 'reason', '3': 1, '4': 1, '5': 14, '6': '.flwr.proto.Reason', '10': 'reason'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_GetPropertiesRes$json = const {
  '1': 'GetPropertiesRes',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.Status', '10': 'status'},
    const {'1': 'properties', '3': 2, '4': 3, '5': 11, '6': '.flwr.proto.ClientMessage.GetPropertiesRes.PropertiesEntry', '10': 'properties'},
  ],
  '3': const [ClientMessage_GetPropertiesRes_PropertiesEntry$json],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_GetPropertiesRes_PropertiesEntry$json = const {
  '1': 'PropertiesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Scalar', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_GetParametersRes$json = const {
  '1': 'GetParametersRes',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.Status', '10': 'status'},
    const {'1': 'parameters', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Parameters', '10': 'parameters'},
  ],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_FitRes$json = const {
  '1': 'FitRes',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.Status', '10': 'status'},
    const {'1': 'parameters', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Parameters', '10': 'parameters'},
    const {'1': 'num_examples', '3': 3, '4': 1, '5': 3, '10': 'numExamples'},
    const {'1': 'metrics', '3': 4, '4': 3, '5': 11, '6': '.flwr.proto.ClientMessage.FitRes.MetricsEntry', '10': 'metrics'},
  ],
  '3': const [ClientMessage_FitRes_MetricsEntry$json],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_FitRes_MetricsEntry$json = const {
  '1': 'MetricsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Scalar', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_EvaluateRes$json = const {
  '1': 'EvaluateRes',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.flwr.proto.Status', '10': 'status'},
    const {'1': 'loss', '3': 2, '4': 1, '5': 2, '10': 'loss'},
    const {'1': 'num_examples', '3': 3, '4': 1, '5': 3, '10': 'numExamples'},
    const {'1': 'metrics', '3': 4, '4': 3, '5': 11, '6': '.flwr.proto.ClientMessage.EvaluateRes.MetricsEntry', '10': 'metrics'},
  ],
  '3': const [ClientMessage_EvaluateRes_MetricsEntry$json],
};

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage_EvaluateRes_MetricsEntry$json = const {
  '1': 'MetricsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flwr.proto.Scalar', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode('Cg1DbGllbnRNZXNzYWdlElAKDmRpc2Nvbm5lY3RfcmVzGAEgASgLMicuZmx3ci5wcm90by5DbGllbnRNZXNzYWdlLkRpc2Nvbm5lY3RSZXNIAFINZGlzY29ubmVjdFJlcxJaChJnZXRfcHJvcGVydGllc19yZXMYAiABKAsyKi5mbHdyLnByb3RvLkNsaWVudE1lc3NhZ2UuR2V0UHJvcGVydGllc1Jlc0gAUhBnZXRQcm9wZXJ0aWVzUmVzEloKEmdldF9wYXJhbWV0ZXJzX3JlcxgDIAEoCzIqLmZsd3IucHJvdG8uQ2xpZW50TWVzc2FnZS5HZXRQYXJhbWV0ZXJzUmVzSABSEGdldFBhcmFtZXRlcnNSZXMSOwoHZml0X3JlcxgEIAEoCzIgLmZsd3IucHJvdG8uQ2xpZW50TWVzc2FnZS5GaXRSZXNIAFIGZml0UmVzEkoKDGV2YWx1YXRlX3JlcxgFIAEoCzIlLmZsd3IucHJvdG8uQ2xpZW50TWVzc2FnZS5FdmFsdWF0ZVJlc0gAUgtldmFsdWF0ZVJlcxo7Cg1EaXNjb25uZWN0UmVzEioKBnJlYXNvbhgBIAEoDjISLmZsd3IucHJvdG8uUmVhc29uUgZyZWFzb24a7QEKEEdldFByb3BlcnRpZXNSZXMSKgoGc3RhdHVzGAEgASgLMhIuZmx3ci5wcm90by5TdGF0dXNSBnN0YXR1cxJaCgpwcm9wZXJ0aWVzGAIgAygLMjouZmx3ci5wcm90by5DbGllbnRNZXNzYWdlLkdldFByb3BlcnRpZXNSZXMuUHJvcGVydGllc0VudHJ5Ugpwcm9wZXJ0aWVzGlEKD1Byb3BlcnRpZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIoCgV2YWx1ZRgCIAEoCzISLmZsd3IucHJvdG8uU2NhbGFyUgV2YWx1ZToCOAEadgoQR2V0UGFyYW1ldGVyc1JlcxIqCgZzdGF0dXMYASABKAsyEi5mbHdyLnByb3RvLlN0YXR1c1IGc3RhdHVzEjYKCnBhcmFtZXRlcnMYAiABKAsyFi5mbHdyLnByb3RvLlBhcmFtZXRlcnNSCnBhcmFtZXRlcnMaqAIKBkZpdFJlcxIqCgZzdGF0dXMYASABKAsyEi5mbHdyLnByb3RvLlN0YXR1c1IGc3RhdHVzEjYKCnBhcmFtZXRlcnMYAiABKAsyFi5mbHdyLnByb3RvLlBhcmFtZXRlcnNSCnBhcmFtZXRlcnMSIQoMbnVtX2V4YW1wbGVzGAMgASgDUgtudW1FeGFtcGxlcxJHCgdtZXRyaWNzGAQgAygLMi0uZmx3ci5wcm90by5DbGllbnRNZXNzYWdlLkZpdFJlcy5NZXRyaWNzRW50cnlSB21ldHJpY3MaTgoMTWV0cmljc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EigKBXZhbHVlGAIgASgLMhIuZmx3ci5wcm90by5TY2FsYXJSBXZhbHVlOgI4ARqOAgoLRXZhbHVhdGVSZXMSKgoGc3RhdHVzGAEgASgLMhIuZmx3ci5wcm90by5TdGF0dXNSBnN0YXR1cxISCgRsb3NzGAIgASgCUgRsb3NzEiEKDG51bV9leGFtcGxlcxgDIAEoA1ILbnVtRXhhbXBsZXMSTAoHbWV0cmljcxgEIAMoCzIyLmZsd3IucHJvdG8uQ2xpZW50TWVzc2FnZS5FdmFsdWF0ZVJlcy5NZXRyaWNzRW50cnlSB21ldHJpY3MaTgoMTWV0cmljc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EigKBXZhbHVlGAIgASgLMhIuZmx3ci5wcm90by5TY2FsYXJSBXZhbHVlOgI4AUIFCgNtc2c=');
@$core.Deprecated('Use scalarDescriptor instead')
const Scalar$json = const {
  '1': 'Scalar',
  '2': const [
    const {'1': 'double', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'double'},
    const {'1': 'sint64', '3': 8, '4': 1, '5': 18, '9': 0, '10': 'sint64'},
    const {'1': 'bool', '3': 13, '4': 1, '5': 8, '9': 0, '10': 'bool'},
    const {'1': 'string', '3': 14, '4': 1, '5': 9, '9': 0, '10': 'string'},
    const {'1': 'bytes', '3': 15, '4': 1, '5': 12, '9': 0, '10': 'bytes'},
  ],
  '8': const [
    const {'1': 'scalar'},
  ],
};

/// Descriptor for `Scalar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scalarDescriptor = $convert.base64Decode('CgZTY2FsYXISGAoGZG91YmxlGAEgASgBSABSBmRvdWJsZRIYCgZzaW50NjQYCCABKBJIAFIGc2ludDY0EhQKBGJvb2wYDSABKAhIAFIEYm9vbBIYCgZzdHJpbmcYDiABKAlIAFIGc3RyaW5nEhYKBWJ5dGVzGA8gASgMSABSBWJ5dGVzQggKBnNjYWxhcg==');
