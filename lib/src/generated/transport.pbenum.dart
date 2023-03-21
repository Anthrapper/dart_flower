///
//  Generated code. Do not modify.
//  source: transport.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Code extends $pb.ProtobufEnum {
  static const Code OK = Code._(0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OK',);
  static const Code GET_PROPERTIES_NOT_IMPLEMENTED = Code._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'GET_PROPERTIES_NOT_IMPLEMENTED',);
  static const Code GET_PARAMETERS_NOT_IMPLEMENTED = Code._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'GET_PARAMETERS_NOT_IMPLEMENTED',);
  static const Code FIT_NOT_IMPLEMENTED = Code._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FIT_NOT_IMPLEMENTED',);
  static const Code EVALUATE_NOT_IMPLEMENTED = Code._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'EVALUATE_NOT_IMPLEMENTED',);

  static const $core.List<Code> values = <Code>[
    OK,
    GET_PROPERTIES_NOT_IMPLEMENTED,
    GET_PARAMETERS_NOT_IMPLEMENTED,
    FIT_NOT_IMPLEMENTED,
    EVALUATE_NOT_IMPLEMENTED,
  ];

  static final $core.Map<$core.int, Code> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Code? valueOf($core.int value) => _byValue[value];

  const Code._($core.int v, $core.String n) : super(v, n);
}

class Reason extends $pb.ProtobufEnum {
  static const Reason UNKNOWN = Reason._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UNKNOWN',);
  static const Reason RECONNECT = Reason._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'RECONNECT',);
  static const Reason POWER_DISCONNECTED = Reason._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'POWER_DISCONNECTED',);
  static const Reason WIFI_UNAVAILABLE = Reason._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'WIFI_UNAVAILABLE',);
  static const Reason ACK = Reason._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'ACK',);

  static const $core.List<Reason> values = <Reason>[
    UNKNOWN,
    RECONNECT,
    POWER_DISCONNECTED,
    WIFI_UNAVAILABLE,
    ACK,
  ];

  static final $core.Map<$core.int, Reason> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Reason? valueOf($core.int value) => _byValue[value];

  const Reason._($core.int v, $core.String n) : super(v, n);
}
