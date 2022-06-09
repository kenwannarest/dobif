part of '../../mqtt_client.dart';

/// Exception that is thrown when the payload of a message
/// is not the correct size.
class InvalidPayloadSizeException implements Exception {
  /// Construct
  InvalidPayloadSizeException(int size, int max) {
    _message = 'mqtt-client::InvalidPayloadSizeException: The size of the '
        'payload ($size bytes) must '
        'be equal to or greater than 0 and less than $max bytes';
  }

  late String _message;

  @override
  String toString() => _message;
}