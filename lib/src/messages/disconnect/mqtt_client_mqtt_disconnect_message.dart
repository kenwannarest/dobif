part of '../../../mqtt_client.dart';

/// Implementation of an MQTT Disconnect Message.
class MqttDisconnectMessage extends MqttMessage {
  /// Initializes a new instance of the MqttDisconnectMessage class.
  MqttDisconnectMessage() {
    header = MqttHeader().asType(MqttMessageType.disconnect);
  }

  /// Initializes a new instance of the MqttDisconnectMessage class.
  MqttDisconnectMessage.fromHeader(MqttHeader header) {
    this.header = header;
  }

  @override
  String toString() {
    final sb = StringBuffer();
    sb.write(super.toString());
    return sb.toString();
  }
}