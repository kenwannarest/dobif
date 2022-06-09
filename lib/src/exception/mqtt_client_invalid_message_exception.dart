part of '../../mqtt_client.dart';

/// Exception thrown when processing a Message that is invalid in some way.
class InvalidMessageException implements Exception {
  /// Construct
  InvalidMessageException(String text) {
    _message = 'mqtt-client::InvalidMessageException: $text';
  }

  late String _message;

  @override
  String toString() => _message;
}