///
//  Generated code. Do not modify.
//  source: transport.proto
//
// @dart = 2.12

import 'dart:async' as $async;
import 'dart:core' as $core;
import 'dart:core';

import 'package:dart_flower/src/generated/transport.pb.dart' as pb;
import 'package:grpc/service_api.dart' as $grpc;

export 'transport.pb.dart';

class FlowerServiceClient extends $grpc.Client {
  static final _$join = $grpc.ClientMethod<pb.ClientMessage, pb.ServerMessage>(
    '/flwr.proto.FlowerService/Join',
    (pb.ClientMessage value) => value.writeToBuffer(),
    ($core.List<$core.int> value) => pb.ServerMessage.fromBuffer(value),
  );

  FlowerServiceClient(
    $grpc.ClientChannel channel, {
    $grpc.CallOptions? options,
    $core.Iterable<$grpc.ClientInterceptor>? interceptors,
  }) : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<pb.ServerMessage> join(
    $async.Stream<pb.ClientMessage> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$join, request, options: options);
  }
}

abstract class FlowerServiceBase extends $grpc.Service {
  @override
  $core.String get $name => 'flwr.proto.FlowerService';

  FlowerServiceBase() {
    $addMethod(
      $grpc.ServiceMethod<pb.ClientMessage, pb.ServerMessage>(
        'Join',
        join,
        true,
        true,
        ($core.List<$core.int> value) => pb.ClientMessage.fromBuffer(value),
        (pb.ServerMessage value) => value.writeToBuffer(),
      ),
    );
  }

  $async.Stream<pb.ServerMessage> join(
    $grpc.ServiceCall call,
    $async.Stream<pb.ClientMessage> request,
  );
}
