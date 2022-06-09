part of '../../mqtt_client.dart';

/// Exception thrown when processing a header that is invalid in some way.
class InvalidHeaderException implements Exception {
  /// Construct
  InvalidHeaderException(String text) {
    _message = 'mqtt-client::InvalidHeaderException: $text';
  }

  late String _message;

  @override
  String toString() => _message;
}