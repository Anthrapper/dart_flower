# dart_flower

A simple [FLOWER](https://flower.dev/) client written in dart for performing federated learning in edge devices.

## Usage

A simple usage example:

```dart
import 'package:dart_flower/dart_flower.dart';


/// 1. Create an instance of FlowerClient

 final flowerClient = FlowerClient(
      getWeights: getWeights,
      evaluate: evaluate,
      fit: fit,
      ip: '192.168.1.1',
      port: 8080,
    );

// It requires 5 named parameters and an optional parameter 
  /// Ip address of the FLOWER server
    String ip;
  /// Port of the FLOWER server
    int port;
  /// Function to get the weights of the model
   Future<List<Uint8List>> Function() getWeights;
  /// Function to fit the model
   Future<FitResponse> Function(
    List<Uint8List> layers,
    int epochs,
  ) fit;
  /// Function to evaluate the model
   Future<EvaluateResponse> Function(
    List<Uint8List> layers,
  ) evaluate;

  /// Certificate file path for TLS connection
  /// If not provided, insecure connection will be used
  final String? certPath;

/// 2. Get the connection logs 
    flowerClient.getLogStream().listen((event) {
        //Do Something
    });

/// 3. Perform Federated Learning
    await flowerClient.runFederated();

```

Check `example` folder for the complete Flutter Application
