part of '../../../mqtt_client.dart';

/// Implementation of the variable header for an MQTT Subscribe message.
class MqttSubscribeVariableHeader extends MqttVariableHeader {
  /// Initializes a new instance of the MqttSubscribeVariableHeader class.
  MqttSubscribeVariableHeader();

  /// Initializes a new instance of the MqttSubscribeVariableHeader class.
  MqttSubscribeVariableHeader.fromByteBuffer(MqttByteBuffer headerStream) {
    readFrom(headerStream);
  }

  /// Creates a variable header from the specified header stream.
  @override
  void readFrom(MqttByteBuffer variableHeaderStream) {
    readMessageIdentifier(variableHeaderStream);
  }

  /// Writes the variable header to the supplied stream.
  @override
  void writeTo(MqttByteBuffer variableHeaderStream) {
    writeMessageIdentifier(variableHeaderStream);
  }

  /// Gets the length of the write data when WriteTo will be called.
  @override
  int getWriteLength() => 2;

  @override
  String toString() =>
      'Subscribe Variable Header: MessageIdentifier={$messageIdentifier}';
}