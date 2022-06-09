part of '../mqtt_client.dart';

/// Protocol selection helper class, protocol defaults V3.1
class Protocol {
  /// Version
  static int version = MqttClientConstants.mqttV31ProtocolVersion;

  /// Name
  static String name = MqttClientConstants.mqttV31ProtocolName;
}