part of '../mqtt_client.dart';

/// Describes the status of a subscription
enum MqttSubscriptionStatus {
  /// The subscription does not exist / is not known
  doesNotExist,

  /// The subscription is currently pending acknowledgement by a broker.
  pending,

  /// The subscription is currently active and messages will be received.
  active
}