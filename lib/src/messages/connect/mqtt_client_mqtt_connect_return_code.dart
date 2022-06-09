part of '../../../mqtt_client.dart';

/// Enumeration of allowable connection request return codes from a broker.
enum MqttConnectReturnCode {
  /// Connection accepted
  connectionAccepted,

  /// Invalid protocol version
  unacceptedProtocolVersion,

  /// Invalid client identifier
  identifierRejected,

  /// Broker unavailable
  brokerUnavailable,

  /// Invalid username or password
  badUsernameOrPassword,

  /// Not authorised
  notAuthorized,

  /// Default
  noneSpecified
}