part of '../mqtt_client.dart';

/// Entity that captures data related to an individual subscription
class Subscription extends Object
    with observe.Observable<observe.ChangeRecord> {
  /// The message identifier assigned to the subscription
  int? messageIdentifier;

  /// The time the subscription was created.
  DateTime? createdTime;

  /// The Topic that is subscribed to.
  late SubscriptionTopic topic;

  /// The QOS level of the topics subscription
  MqttQos? qos;
}