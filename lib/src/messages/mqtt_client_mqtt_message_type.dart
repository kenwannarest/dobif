part of '../../mqtt_client.dart';

/// An enumeration of all available MQTT Message Types
enum MqttMessageType {
  /// Reserved by the MQTT spec, should not be used.
  reserved1,

  /// Connect
  connect,

  /// Connect acknowledge
  connectAck,

  /// Publish
  publish,

  /// Publish acknowledge
  publishAck,

  /// Publish recieved
  publishReceived,

  /// Publish release
  publishRelease,

  /// Publish complete
  publishComplete,

  /// Subscribe
  subscribe,

  /// Subscribe acknowledge
  subscribeAck,

  /// Unsubscribe
  unsubscribe,

  /// Unsubscribe acknowledge
  unsubscribeAck,

  /// Ping request
  pingRequest,

  /// Ping response
  pingResponse,

  /// Disconnect
  disconnect,

  /// Reserved by the MQTT spec, should not be used.
  reserved2
}