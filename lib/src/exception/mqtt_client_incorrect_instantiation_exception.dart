part of '../../mqtt_client.dart';

/// Exception thrown when a browser or server client is instantiated incorrectly.
class IncorrectInstantiationException implements Exception {
  /// Construct
  IncorrectInstantiationException() {
    _message =
        'mqtt-client::ClientIncorrectInstantiationException: Incorrect instantiation, do not'
        'instantiate MqttClient directly, use MqttServerClient or MqttBrowserClient';
  }

  late String _message;

  @override
  String toString() => _message;
}