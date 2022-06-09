part of '../../mqtt_client.dart';

/// Exception thrown when the client fails to connect
class NoConnectionException implements Exception {
  /// Construct
  NoConnectionException(String message) {
    _message = 'mqtt-client::NoConnectionException: $message';
  }

  late String _message;

  @override
  String toString() => _message;
}