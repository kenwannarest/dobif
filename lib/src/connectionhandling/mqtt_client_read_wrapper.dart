part of '../../mqtt_client.dart';

/// State and logic used to read from the underlying network stream.
class ReadWrapper {
  /// Creates a new ReadWrapper that wraps the state used to read
  /// a message from a stream.
  ReadWrapper() {
    messageBytes = <int>[];
  }

  /// The bytes associated with the message being read.
  List<int>? messageBytes;
}