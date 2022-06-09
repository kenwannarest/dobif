part of '../mqtt_client.dart';

/// Represents a MQTT message that has been received from a broker.
class MqttReceivedMessage<T> extends observe.ChangeRecord {
  /// Initializes a new instance of an MqttReceivedMessage class.
  MqttReceivedMessage(this.topic, this.payload);

  /// The topic the message was received on.
  String topic;

  /// The payload of the message received.
  T payload;
}