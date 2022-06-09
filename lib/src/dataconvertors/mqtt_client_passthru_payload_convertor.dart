part of '../../mqtt_client.dart';

///  Acts as a pass through for the raw data without doing any conversion.
class PassthruPayloadConverter implements PayloadConverter<typed.Uint8Buffer> {
  /// Processes received data and returns it as a byte array.
  @override
  typed.Uint8Buffer convertFromBytes(typed.Uint8Buffer messageData) =>
      messageData;

  /// Converts sent data from an object graph to a byte array.
  @override
  typed.Uint8Buffer convertToBytes(typed.Uint8Buffer data) => data;
}