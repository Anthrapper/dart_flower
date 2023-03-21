///
//  Generated code. Do not modify.
//  source: transport.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name, prefer_constructors_over_static_methods

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'package:dart_flower/src/generated/transport.pbenum.dart';

export 'transport.pbenum.dart';

class Status extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'Status',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..e<Code>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'code',
      $pb.PbFieldType.OE,
      defaultOrMaker: Code.OK,
      valueOf: Code.valueOf,
      enumValues: Code.values,
    )
    ..aOS(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'message',
    )
    ..hasRequiredFields = false;
  factory Status({
    Code? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) {
      result.code = code;
    }
    if (message != null) {
      result.message = message;
    }
    return result;
  }

  Status._() : super();
  factory Status.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory Status.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) =>
      super.copyWith((message) => updates(message as Status))
          as Status; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Status create() => Status._();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  @$core.pragma('dart2js:noInline')
  static Status getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Status>(create);
  static Status? _defaultInstance;

  @$pb.TagNumber(1)
  Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(Code v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'Parameters',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..p<$core.List<$core.int>>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'tensors',
      $pb.PbFieldType.PY,
    )
    ..aOS(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'tensorType',
    )
    ..hasRequiredFields = false;
  factory Parameters({
    $core.Iterable<$core.List<$core.int>>? tensors,
    $core.String? tensorType,
  }) {
    final result = create();
    if (tensors != null) {
      result.tensors.addAll(tensors);
    }
    if (tensorType != null) {
      result.tensorType = tensorType;
    }
    return result;
  }

  Parameters._() : super();
  factory Parameters.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory Parameters.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Parameters clone() => Parameters()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Parameters copyWith(void Function(Parameters) updates) =>
      super.copyWith((message) => updates(message as Parameters))
          as Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Parameters create() => Parameters._();
  Parameters createEmptyInstance() => create();
  static $pb.PbList<Parameters> createRepeated() => $pb.PbList<Parameters>();
  @$core.pragma('dart2js:noInline')
  static Parameters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Parameters>(create);
  static Parameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get tensors => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get tensorType => $_getSZ(1);
  @$pb.TagNumber(2)
  set tensorType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTensorType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTensorType() => clearField(2);
}

class ServerMessage_ReconnectIns extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ServerMessage.ReconnectIns',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..aInt64(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'seconds',
    )
    ..hasRequiredFields = false;
  factory ServerMessage_ReconnectIns({
    $fixnum.Int64? seconds,
  }) {
    final result = create();
    if (seconds != null) {
      result.seconds = seconds;
    }
    return result;
  }

  ServerMessage_ReconnectIns._() : super();
  factory ServerMessage_ReconnectIns.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage_ReconnectIns.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage_ReconnectIns clone() =>
      ServerMessage_ReconnectIns()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage_ReconnectIns copyWith(
    void Function(ServerMessage_ReconnectIns) updates,
  ) =>
      super.copyWith(
        (message) => updates(message as ServerMessage_ReconnectIns),
      ) as ServerMessage_ReconnectIns; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_ReconnectIns create() => ServerMessage_ReconnectIns._();
  ServerMessage_ReconnectIns createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_ReconnectIns> createRepeated() =>
      $pb.PbList<ServerMessage_ReconnectIns>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_ReconnectIns getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage_ReconnectIns>(create);
  static ServerMessage_ReconnectIns? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);
}

class ServerMessage_GetPropertiesIns extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ServerMessage.GetPropertiesIns',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..m<$core.String, Scalar>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'config',
      entryClassName: 'ServerMessage.GetPropertiesIns.ConfigEntry',
      keyFieldType: $pb.PbFieldType.OS,
      valueFieldType: $pb.PbFieldType.OM,
      valueCreator: Scalar.create,
      packageName: const $pb.PackageName('flwr.proto'),
    )
    ..hasRequiredFields = false;
  factory ServerMessage_GetPropertiesIns({
    $core.Map<$core.String, Scalar>? config,
  }) {
    final result = create();
    if (config != null) {
      result.config.addAll(config);
    }
    return result;
  }

  ServerMessage_GetPropertiesIns._() : super();
  factory ServerMessage_GetPropertiesIns.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage_GetPropertiesIns.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage_GetPropertiesIns clone() =>
      ServerMessage_GetPropertiesIns()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage_GetPropertiesIns copyWith(
    void Function(ServerMessage_GetPropertiesIns) updates,
  ) =>
      super.copyWith(
        (message) => updates(message as ServerMessage_GetPropertiesIns),
      ) as ServerMessage_GetPropertiesIns; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_GetPropertiesIns create() =>
      ServerMessage_GetPropertiesIns._();
  ServerMessage_GetPropertiesIns createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_GetPropertiesIns> createRepeated() =>
      $pb.PbList<ServerMessage_GetPropertiesIns>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_GetPropertiesIns getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage_GetPropertiesIns>(create);
  static ServerMessage_GetPropertiesIns? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, Scalar> get config => $_getMap(0);
}

class ServerMessage_GetParametersIns extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ServerMessage.GetParametersIns',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..m<$core.String, Scalar>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'config',
      entryClassName: 'ServerMessage.GetParametersIns.ConfigEntry',
      keyFieldType: $pb.PbFieldType.OS,
      valueFieldType: $pb.PbFieldType.OM,
      valueCreator: Scalar.create,
      packageName: const $pb.PackageName('flwr.proto'),
    )
    ..hasRequiredFields = false;
  factory ServerMessage_GetParametersIns({
    $core.Map<$core.String, Scalar>? config,
  }) {
    final result = create();
    if (config != null) {
      result.config.addAll(config);
    }
    return result;
  }

  ServerMessage_GetParametersIns._() : super();
  factory ServerMessage_GetParametersIns.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage_GetParametersIns.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage_GetParametersIns clone() =>
      ServerMessage_GetParametersIns()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage_GetParametersIns copyWith(
    void Function(ServerMessage_GetParametersIns) updates,
  ) =>
      super.copyWith(
        (message) => updates(message as ServerMessage_GetParametersIns),
      ) as ServerMessage_GetParametersIns; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_GetParametersIns create() =>
      ServerMessage_GetParametersIns._();
  ServerMessage_GetParametersIns createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_GetParametersIns> createRepeated() =>
      $pb.PbList<ServerMessage_GetParametersIns>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_GetParametersIns getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage_GetParametersIns>(create);
  static ServerMessage_GetParametersIns? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, Scalar> get config => $_getMap(0);
}

class ServerMessage_FitIns extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ServerMessage.FitIns',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..aOM<Parameters>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'parameters',
      subBuilder: Parameters.create,
    )
    ..m<$core.String, Scalar>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'config',
      entryClassName: 'ServerMessage.FitIns.ConfigEntry',
      keyFieldType: $pb.PbFieldType.OS,
      valueFieldType: $pb.PbFieldType.OM,
      valueCreator: Scalar.create,
      packageName: const $pb.PackageName('flwr.proto'),
    )
    ..hasRequiredFields = false;
  factory ServerMessage_FitIns({
    Parameters? parameters,
    $core.Map<$core.String, Scalar>? config,
  }) {
    final result = create();
    if (parameters != null) {
      result.parameters = parameters;
    }
    if (config != null) {
      result.config.addAll(config);
    }
    return result;
  }

  ServerMessage_FitIns._() : super();
  factory ServerMessage_FitIns.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage_FitIns.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage_FitIns clone() =>
      ServerMessage_FitIns()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage_FitIns copyWith(void Function(ServerMessage_FitIns) updates) =>
      super.copyWith((message) => updates(message as ServerMessage_FitIns))
          as ServerMessage_FitIns; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_FitIns create() => ServerMessage_FitIns._();
  ServerMessage_FitIns createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_FitIns> createRepeated() =>
      $pb.PbList<ServerMessage_FitIns>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_FitIns getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage_FitIns>(create);
  static ServerMessage_FitIns? _defaultInstance;

  @$pb.TagNumber(1)
  Parameters get parameters => $_getN(0);
  @$pb.TagNumber(1)
  set parameters(Parameters v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParameters() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameters() => clearField(1);
  @$pb.TagNumber(1)
  Parameters ensureParameters() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, Scalar> get config => $_getMap(1);
}

class ServerMessage_EvaluateIns extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ServerMessage.EvaluateIns',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..aOM<Parameters>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'parameters',
      subBuilder: Parameters.create,
    )
    ..m<$core.String, Scalar>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'config',
      entryClassName: 'ServerMessage.EvaluateIns.ConfigEntry',
      keyFieldType: $pb.PbFieldType.OS,
      valueFieldType: $pb.PbFieldType.OM,
      valueCreator: Scalar.create,
      packageName: const $pb.PackageName('flwr.proto'),
    )
    ..hasRequiredFields = false;
  factory ServerMessage_EvaluateIns({
    Parameters? parameters,
    $core.Map<$core.String, Scalar>? config,
  }) {
    final result = create();
    if (parameters != null) {
      result.parameters = parameters;
    }
    if (config != null) {
      result.config.addAll(config);
    }
    return result;
  }

  ServerMessage_EvaluateIns._() : super();
  factory ServerMessage_EvaluateIns.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage_EvaluateIns.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage_EvaluateIns clone() =>
      ServerMessage_EvaluateIns()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage_EvaluateIns copyWith(
    void Function(ServerMessage_EvaluateIns) updates,
  ) =>
      super.copyWith((message) => updates(message as ServerMessage_EvaluateIns))
          as ServerMessage_EvaluateIns; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage_EvaluateIns create() => ServerMessage_EvaluateIns._();
  ServerMessage_EvaluateIns createEmptyInstance() => create();
  static $pb.PbList<ServerMessage_EvaluateIns> createRepeated() =>
      $pb.PbList<ServerMessage_EvaluateIns>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage_EvaluateIns getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage_EvaluateIns>(create);
  static ServerMessage_EvaluateIns? _defaultInstance;

  @$pb.TagNumber(1)
  Parameters get parameters => $_getN(0);
  @$pb.TagNumber(1)
  set parameters(Parameters v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParameters() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameters() => clearField(1);
  @$pb.TagNumber(1)
  Parameters ensureParameters() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, Scalar> get config => $_getMap(1);
}

enum ServerMessage_Msg {
  reconnectIns,
  getPropertiesIns,
  getParametersIns,
  fitIns,
  evaluateIns,
  notSet
}

class ServerMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerMessage_Msg> _ServerMessage_MsgByTag =
      {
    1: ServerMessage_Msg.reconnectIns,
    2: ServerMessage_Msg.getPropertiesIns,
    3: ServerMessage_Msg.getParametersIns,
    4: ServerMessage_Msg.fitIns,
    5: ServerMessage_Msg.evaluateIns,
    0: ServerMessage_Msg.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ServerMessage',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<ServerMessage_ReconnectIns>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'reconnectIns',
      subBuilder: ServerMessage_ReconnectIns.create,
    )
    ..aOM<ServerMessage_GetPropertiesIns>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'getPropertiesIns',
      subBuilder: ServerMessage_GetPropertiesIns.create,
    )
    ..aOM<ServerMessage_GetParametersIns>(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'getParametersIns',
      subBuilder: ServerMessage_GetParametersIns.create,
    )
    ..aOM<ServerMessage_FitIns>(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'fitIns',
      subBuilder: ServerMessage_FitIns.create,
    )
    ..aOM<ServerMessage_EvaluateIns>(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'evaluateIns',
      subBuilder: ServerMessage_EvaluateIns.create,
    )
    ..hasRequiredFields = false;
  factory ServerMessage({
    ServerMessage_ReconnectIns? reconnectIns,
    ServerMessage_GetPropertiesIns? getPropertiesIns,
    ServerMessage_GetParametersIns? getParametersIns,
    ServerMessage_FitIns? fitIns,
    ServerMessage_EvaluateIns? evaluateIns,
  }) {
    final result = create();
    if (reconnectIns != null) {
      result.reconnectIns = reconnectIns;
    }
    if (getPropertiesIns != null) {
      result.getPropertiesIns = getPropertiesIns;
    }
    if (getParametersIns != null) {
      result.getParametersIns = getParametersIns;
    }
    if (fitIns != null) {
      result.fitIns = fitIns;
    }
    if (evaluateIns != null) {
      result.evaluateIns = evaluateIns;
    }
    return result;
  }

  ServerMessage._() : super();
  factory ServerMessage.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage clone() => ServerMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage copyWith(void Function(ServerMessage) updates) =>
      super.copyWith((message) => updates(message as ServerMessage))
          as ServerMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerMessage create() => ServerMessage._();
  ServerMessage createEmptyInstance() => create();
  static $pb.PbList<ServerMessage> createRepeated() =>
      $pb.PbList<ServerMessage>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage>(create);
  static ServerMessage? _defaultInstance;

  ServerMessage_Msg whichMsg() => _ServerMessage_MsgByTag[$_whichOneof(0)]!;
  void clearMsg() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ServerMessage_ReconnectIns get reconnectIns => $_getN(0);
  @$pb.TagNumber(1)
  set reconnectIns(ServerMessage_ReconnectIns v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReconnectIns() => $_has(0);
  @$pb.TagNumber(1)
  void clearReconnectIns() => clearField(1);
  @$pb.TagNumber(1)
  ServerMessage_ReconnectIns ensureReconnectIns() => $_ensure(0);

  @$pb.TagNumber(2)
  ServerMessage_GetPropertiesIns get getPropertiesIns => $_getN(1);
  @$pb.TagNumber(2)
  set getPropertiesIns(ServerMessage_GetPropertiesIns v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGetPropertiesIns() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetPropertiesIns() => clearField(2);
  @$pb.TagNumber(2)
  ServerMessage_GetPropertiesIns ensureGetPropertiesIns() => $_ensure(1);

  @$pb.TagNumber(3)
  ServerMessage_GetParametersIns get getParametersIns => $_getN(2);
  @$pb.TagNumber(3)
  set getParametersIns(ServerMessage_GetParametersIns v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGetParametersIns() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetParametersIns() => clearField(3);
  @$pb.TagNumber(3)
  ServerMessage_GetParametersIns ensureGetParametersIns() => $_ensure(2);

  @$pb.TagNumber(4)
  ServerMessage_FitIns get fitIns => $_getN(3);
  @$pb.TagNumber(4)
  set fitIns(ServerMessage_FitIns v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFitIns() => $_has(3);
  @$pb.TagNumber(4)
  void clearFitIns() => clearField(4);
  @$pb.TagNumber(4)
  ServerMessage_FitIns ensureFitIns() => $_ensure(3);

  @$pb.TagNumber(5)
  ServerMessage_EvaluateIns get evaluateIns => $_getN(4);
  @$pb.TagNumber(5)
  set evaluateIns(ServerMessage_EvaluateIns v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEvaluateIns() => $_has(4);
  @$pb.TagNumber(5)
  void clearEvaluateIns() => clearField(5);
  @$pb.TagNumber(5)
  ServerMessage_EvaluateIns ensureEvaluateIns() => $_ensure(4);
}

class ClientMessage_DisconnectRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ClientMessage.DisconnectRes',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..e<Reason>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'reason',
      $pb.PbFieldType.OE,
      defaultOrMaker: Reason.UNKNOWN,
      valueOf: Reason.valueOf,
      enumValues: Reason.values,
    )
    ..hasRequiredFields = false;
  factory ClientMessage_DisconnectRes({
    Reason? reason,
  }) {
    final result = create();
    if (reason != null) {
      result.reason = reason;
    }
    return result;
  }

  ClientMessage_DisconnectRes._() : super();
  factory ClientMessage_DisconnectRes.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage_DisconnectRes.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage_DisconnectRes clone() =>
      ClientMessage_DisconnectRes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage_DisconnectRes copyWith(
    void Function(ClientMessage_DisconnectRes) updates,
  ) =>
      super.copyWith(
        (message) => updates(message as ClientMessage_DisconnectRes),
      ) as ClientMessage_DisconnectRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_DisconnectRes create() =>
      ClientMessage_DisconnectRes._();
  ClientMessage_DisconnectRes createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_DisconnectRes> createRepeated() =>
      $pb.PbList<ClientMessage_DisconnectRes>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_DisconnectRes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage_DisconnectRes>(create);
  static ClientMessage_DisconnectRes? _defaultInstance;

  @$pb.TagNumber(1)
  Reason get reason => $_getN(0);
  @$pb.TagNumber(1)
  set reason(Reason v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => clearField(1);
}

class ClientMessage_GetPropertiesRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ClientMessage.GetPropertiesRes',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..aOM<Status>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'status',
      subBuilder: Status.create,
    )
    ..m<$core.String, Scalar>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'properties',
      entryClassName: 'ClientMessage.GetPropertiesRes.PropertiesEntry',
      keyFieldType: $pb.PbFieldType.OS,
      valueFieldType: $pb.PbFieldType.OM,
      valueCreator: Scalar.create,
      packageName: const $pb.PackageName('flwr.proto'),
    )
    ..hasRequiredFields = false;
  factory ClientMessage_GetPropertiesRes({
    Status? status,
    $core.Map<$core.String, Scalar>? properties,
  }) {
    final result = create();
    if (status != null) {
      result.status = status;
    }
    if (properties != null) {
      result.properties.addAll(properties);
    }
    return result;
  }

  ClientMessage_GetPropertiesRes._() : super();
  factory ClientMessage_GetPropertiesRes.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage_GetPropertiesRes.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage_GetPropertiesRes clone() =>
      ClientMessage_GetPropertiesRes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage_GetPropertiesRes copyWith(
    void Function(ClientMessage_GetPropertiesRes) updates,
  ) =>
      super.copyWith(
        (message) => updates(message as ClientMessage_GetPropertiesRes),
      ) as ClientMessage_GetPropertiesRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GetPropertiesRes create() =>
      ClientMessage_GetPropertiesRes._();
  ClientMessage_GetPropertiesRes createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_GetPropertiesRes> createRepeated() =>
      $pb.PbList<ClientMessage_GetPropertiesRes>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GetPropertiesRes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage_GetPropertiesRes>(create);
  static ClientMessage_GetPropertiesRes? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  Status ensureStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, Scalar> get properties => $_getMap(1);
}

class ClientMessage_GetParametersRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ClientMessage.GetParametersRes',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..aOM<Status>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'status',
      subBuilder: Status.create,
    )
    ..aOM<Parameters>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'parameters',
      subBuilder: Parameters.create,
    )
    ..hasRequiredFields = false;
  factory ClientMessage_GetParametersRes({
    Status? status,
    Parameters? parameters,
  }) {
    final result = create();
    if (status != null) {
      result.status = status;
    }
    if (parameters != null) {
      result.parameters = parameters;
    }
    return result;
  }

  ClientMessage_GetParametersRes._() : super();
  factory ClientMessage_GetParametersRes.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage_GetParametersRes.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage_GetParametersRes clone() =>
      ClientMessage_GetParametersRes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage_GetParametersRes copyWith(
    void Function(ClientMessage_GetParametersRes) updates,
  ) =>
      super.copyWith(
        (message) => updates(message as ClientMessage_GetParametersRes),
      ) as ClientMessage_GetParametersRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GetParametersRes create() =>
      ClientMessage_GetParametersRes._();
  ClientMessage_GetParametersRes createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_GetParametersRes> createRepeated() =>
      $pb.PbList<ClientMessage_GetParametersRes>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_GetParametersRes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage_GetParametersRes>(create);
  static ClientMessage_GetParametersRes? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  Status ensureStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  Parameters get parameters => $_getN(1);
  @$pb.TagNumber(2)
  set parameters(Parameters v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasParameters() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameters() => clearField(2);
  @$pb.TagNumber(2)
  Parameters ensureParameters() => $_ensure(1);
}

class ClientMessage_FitRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ClientMessage.FitRes',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..aOM<Status>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'status',
      subBuilder: Status.create,
    )
    ..aOM<Parameters>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'parameters',
      subBuilder: Parameters.create,
    )
    ..aInt64(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'numExamples',
    )
    ..m<$core.String, Scalar>(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'metrics',
      entryClassName: 'ClientMessage.FitRes.MetricsEntry',
      keyFieldType: $pb.PbFieldType.OS,
      valueFieldType: $pb.PbFieldType.OM,
      valueCreator: Scalar.create,
      packageName: const $pb.PackageName('flwr.proto'),
    )
    ..hasRequiredFields = false;
  factory ClientMessage_FitRes({
    Status? status,
    Parameters? parameters,
    $fixnum.Int64? numExamples,
    $core.Map<$core.String, Scalar>? metrics,
  }) {
    final result = create();
    if (status != null) {
      result.status = status;
    }
    if (parameters != null) {
      result.parameters = parameters;
    }
    if (numExamples != null) {
      result.numExamples = numExamples;
    }
    if (metrics != null) {
      result.metrics.addAll(metrics);
    }
    return result;
  }

  ClientMessage_FitRes._() : super();
  factory ClientMessage_FitRes.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage_FitRes.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage_FitRes clone() =>
      ClientMessage_FitRes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage_FitRes copyWith(void Function(ClientMessage_FitRes) updates) =>
      super.copyWith((message) => updates(message as ClientMessage_FitRes))
          as ClientMessage_FitRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_FitRes create() => ClientMessage_FitRes._();
  ClientMessage_FitRes createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_FitRes> createRepeated() =>
      $pb.PbList<ClientMessage_FitRes>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_FitRes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage_FitRes>(create);
  static ClientMessage_FitRes? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  Status ensureStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  Parameters get parameters => $_getN(1);
  @$pb.TagNumber(2)
  set parameters(Parameters v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasParameters() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameters() => clearField(2);
  @$pb.TagNumber(2)
  Parameters ensureParameters() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get numExamples => $_getI64(2);
  @$pb.TagNumber(3)
  set numExamples($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNumExamples() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumExamples() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, Scalar> get metrics => $_getMap(3);
}

class ClientMessage_EvaluateRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ClientMessage.EvaluateRes',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..aOM<Status>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'status',
      subBuilder: Status.create,
    )
    ..a<$core.double>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'loss',
      $pb.PbFieldType.OF,
    )
    ..aInt64(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'numExamples',
    )
    ..m<$core.String, Scalar>(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'metrics',
      entryClassName: 'ClientMessage.EvaluateRes.MetricsEntry',
      keyFieldType: $pb.PbFieldType.OS,
      valueFieldType: $pb.PbFieldType.OM,
      valueCreator: Scalar.create,
      packageName: const $pb.PackageName('flwr.proto'),
    )
    ..hasRequiredFields = false;
  factory ClientMessage_EvaluateRes({
    Status? status,
    $core.double? loss,
    $fixnum.Int64? numExamples,
    $core.Map<$core.String, Scalar>? metrics,
  }) {
    final result = create();
    if (status != null) {
      result.status = status;
    }
    if (loss != null) {
      result.loss = loss;
    }
    if (numExamples != null) {
      result.numExamples = numExamples;
    }
    if (metrics != null) {
      result.metrics.addAll(metrics);
    }
    return result;
  }

  ClientMessage_EvaluateRes._() : super();
  factory ClientMessage_EvaluateRes.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage_EvaluateRes.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage_EvaluateRes clone() =>
      ClientMessage_EvaluateRes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage_EvaluateRes copyWith(
    void Function(ClientMessage_EvaluateRes) updates,
  ) =>
      super.copyWith((message) => updates(message as ClientMessage_EvaluateRes))
          as ClientMessage_EvaluateRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage_EvaluateRes create() => ClientMessage_EvaluateRes._();
  ClientMessage_EvaluateRes createEmptyInstance() => create();
  static $pb.PbList<ClientMessage_EvaluateRes> createRepeated() =>
      $pb.PbList<ClientMessage_EvaluateRes>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage_EvaluateRes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage_EvaluateRes>(create);
  static ClientMessage_EvaluateRes? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  Status ensureStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get loss => $_getN(1);
  @$pb.TagNumber(2)
  set loss($core.double v) {
    $_setFloat(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLoss() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoss() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get numExamples => $_getI64(2);
  @$pb.TagNumber(3)
  set numExamples($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNumExamples() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumExamples() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, Scalar> get metrics => $_getMap(3);
}

enum ClientMessage_Msg {
  disconnectRes,
  getPropertiesRes,
  getParametersRes,
  fitRes,
  evaluateRes,
  notSet
}

class ClientMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientMessage_Msg> _ClientMessage_MsgByTag =
      {
    1: ClientMessage_Msg.disconnectRes,
    2: ClientMessage_Msg.getPropertiesRes,
    3: ClientMessage_Msg.getParametersRes,
    4: ClientMessage_Msg.fitRes,
    5: ClientMessage_Msg.evaluateRes,
    0: ClientMessage_Msg.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'ClientMessage',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<ClientMessage_DisconnectRes>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'disconnectRes',
      subBuilder: ClientMessage_DisconnectRes.create,
    )
    ..aOM<ClientMessage_GetPropertiesRes>(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'getPropertiesRes',
      subBuilder: ClientMessage_GetPropertiesRes.create,
    )
    ..aOM<ClientMessage_GetParametersRes>(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'getParametersRes',
      subBuilder: ClientMessage_GetParametersRes.create,
    )
    ..aOM<ClientMessage_FitRes>(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'fitRes',
      subBuilder: ClientMessage_FitRes.create,
    )
    ..aOM<ClientMessage_EvaluateRes>(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'evaluateRes',
      subBuilder: ClientMessage_EvaluateRes.create,
    )
    ..hasRequiredFields = false;
  factory ClientMessage({
    ClientMessage_DisconnectRes? disconnectRes,
    ClientMessage_GetPropertiesRes? getPropertiesRes,
    ClientMessage_GetParametersRes? getParametersRes,
    ClientMessage_FitRes? fitRes,
    ClientMessage_EvaluateRes? evaluateRes,
  }) {
    final result = create();
    if (disconnectRes != null) {
      result.disconnectRes = disconnectRes;
    }
    if (getPropertiesRes != null) {
      result.getPropertiesRes = getPropertiesRes;
    }
    if (getParametersRes != null) {
      result.getParametersRes = getParametersRes;
    }
    if (fitRes != null) {
      result.fitRes = fitRes;
    }
    if (evaluateRes != null) {
      result.evaluateRes = evaluateRes;
    }
    return result;
  }

  ClientMessage._() : super();
  factory ClientMessage.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage clone() => ClientMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage copyWith(void Function(ClientMessage) updates) =>
      super.copyWith((message) => updates(message as ClientMessage))
          as ClientMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage create() => ClientMessage._();
  ClientMessage createEmptyInstance() => create();
  static $pb.PbList<ClientMessage> createRepeated() =>
      $pb.PbList<ClientMessage>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage>(create);
  static ClientMessage? _defaultInstance;

  ClientMessage_Msg whichMsg() => _ClientMessage_MsgByTag[$_whichOneof(0)]!;
  void clearMsg() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ClientMessage_DisconnectRes get disconnectRes => $_getN(0);
  @$pb.TagNumber(1)
  set disconnectRes(ClientMessage_DisconnectRes v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDisconnectRes() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisconnectRes() => clearField(1);
  @$pb.TagNumber(1)
  ClientMessage_DisconnectRes ensureDisconnectRes() => $_ensure(0);

  @$pb.TagNumber(2)
  ClientMessage_GetPropertiesRes get getPropertiesRes => $_getN(1);
  @$pb.TagNumber(2)
  set getPropertiesRes(ClientMessage_GetPropertiesRes v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGetPropertiesRes() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetPropertiesRes() => clearField(2);
  @$pb.TagNumber(2)
  ClientMessage_GetPropertiesRes ensureGetPropertiesRes() => $_ensure(1);

  @$pb.TagNumber(3)
  ClientMessage_GetParametersRes get getParametersRes => $_getN(2);
  @$pb.TagNumber(3)
  set getParametersRes(ClientMessage_GetParametersRes v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGetParametersRes() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetParametersRes() => clearField(3);
  @$pb.TagNumber(3)
  ClientMessage_GetParametersRes ensureGetParametersRes() => $_ensure(2);

  @$pb.TagNumber(4)
  ClientMessage_FitRes get fitRes => $_getN(3);
  @$pb.TagNumber(4)
  set fitRes(ClientMessage_FitRes v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFitRes() => $_has(3);
  @$pb.TagNumber(4)
  void clearFitRes() => clearField(4);
  @$pb.TagNumber(4)
  ClientMessage_FitRes ensureFitRes() => $_ensure(3);

  @$pb.TagNumber(5)
  ClientMessage_EvaluateRes get evaluateRes => $_getN(4);
  @$pb.TagNumber(5)
  set evaluateRes(ClientMessage_EvaluateRes v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEvaluateRes() => $_has(4);
  @$pb.TagNumber(5)
  void clearEvaluateRes() => clearField(5);
  @$pb.TagNumber(5)
  ClientMessage_EvaluateRes ensureEvaluateRes() => $_ensure(4);
}

enum Scalar_Scalar { double_1, sint64, bool_13, string, bytes, notSet }

class Scalar extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Scalar_Scalar> _Scalar_ScalarByTag = {
    1: Scalar_Scalar.double_1,
    8: Scalar_Scalar.sint64,
    13: Scalar_Scalar.bool_13,
    14: Scalar_Scalar.string,
    15: Scalar_Scalar.bytes,
    0: Scalar_Scalar.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'Scalar',
    package: const $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'flwr.proto',
    ),
    createEmptyInstance: create,
  )
    ..oo(0, [1, 8, 13, 14, 15])
    ..a<$core.double>(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'double',
      $pb.PbFieldType.OD,
    )
    ..a<$fixnum.Int64>(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'sint64',
      $pb.PbFieldType.OS6,
      defaultOrMaker: $fixnum.Int64.ZERO,
    )
    ..aOB(
      13,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'bool',
    )
    ..aOS(
      14,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'string',
    )
    ..a<$core.List<$core.int>>(
      15,
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'bytes',
      $pb.PbFieldType.OY,
    )
    ..hasRequiredFields = false;
  factory Scalar({
    $core.double? double_1,
    $fixnum.Int64? sint64,
    $core.bool? bool_13,
    $core.String? string,
    $core.List<$core.int>? bytes,
  }) {
    final result = create();
    if (double_1 != null) {
      result.double_1 = double_1;
    }
    if (sint64 != null) {
      result.sint64 = sint64;
    }
    if (bool_13 != null) {
      result.bool_13 = bool_13;
    }
    if (string != null) {
      result.string = string;
    }
    if (bytes != null) {
      result.bytes = bytes;
    }
    return result;
  }

  Scalar._() : super();
  factory Scalar.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromBuffer(i, r);
  factory Scalar.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Scalar clone() => Scalar()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Scalar copyWith(void Function(Scalar) updates) =>
      super.copyWith((message) => updates(message as Scalar))
          as Scalar; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Scalar create() => Scalar._();
  Scalar createEmptyInstance() => create();
  static $pb.PbList<Scalar> createRepeated() => $pb.PbList<Scalar>();
  @$core.pragma('dart2js:noInline')
  static Scalar getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scalar>(create);
  static Scalar? _defaultInstance;

  Scalar_Scalar whichScalar() => _Scalar_ScalarByTag[$_whichOneof(0)]!;
  void clearScalar() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get double_1 => $_getN(0);
  @$pb.TagNumber(1)
  set double_1($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDouble_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearDouble_1() => clearField(1);

  @$pb.TagNumber(8)
  $fixnum.Int64 get sint64 => $_getI64(1);
  @$pb.TagNumber(8)
  set sint64($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSint64() => $_has(1);
  @$pb.TagNumber(8)
  void clearSint64() => clearField(8);

  @$pb.TagNumber(13)
  $core.bool get bool_13 => $_getBF(2);
  @$pb.TagNumber(13)
  set bool_13($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasBool_13() => $_has(2);
  @$pb.TagNumber(13)
  void clearBool_13() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get string => $_getSZ(3);
  @$pb.TagNumber(14)
  set string($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasString() => $_has(3);
  @$pb.TagNumber(14)
  void clearString() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get bytes => $_getN(4);
  @$pb.TagNumber(15)
  set bytes($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasBytes() => $_has(4);
  @$pb.TagNumber(15)
  void clearBytes() => clearField(15);
}
