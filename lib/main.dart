// ignore_for_file: avoid_print, deprecated_member_use, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
//import 'package:intl/intl.dart';
//import 'package:mqtt_client/mqtt_client.dart';
//import 'package:mqtt_client/mqtt_server_client.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:typed_data/src/typed_buffer.dart';

import 'package:dobif/src/welcome.dart';

import 'mqtt_client.dart';
import 'mqtt_server_client.dart';
import 'mqtt_browser_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Welcome());
  }
}

class MQTTClientWrapper {
  late MqttClient client;
}

Future<MqttServerClient> connect() async {
  MqttServerClient client = MqttServerClient.withPort(
      'broker.loranet.my', 'kakashi', 1883); //(broker,clientID,port)
//  const pubTopic = 'topic/dobifm';
//  final builder = MqttClientPayloadBuilder();
//  builder.addString('Hello MQTT');
//  client.logging(on: true);
//  client.subscribe("topic/dobifm", MqttQos.atLeastOnce);
//  client.publishMessage(pubTopic, MqttQos.atLeastOnce, builder.payload);
  client.onConnected = onConnected;
  client.onDisconnected = onDisconnected;
  client.onUnsubscribed = onUnsubscribed as UnsubscribeCallback?;
  client.onSubscribed = onSubscribed;
  client.onSubscribeFail = onSubscribeFail;
  client.pongCallback = pong;

  String? nullableString;
  if (nullableString != null) {
    var payload;
    client.subscribe("topic/test", MqttQos.atLeastOnce);
    const pubTopic = 'topic/dobifm';
    final builder = MqttClientPayloadBuilder();
    builder.addString('Hello Mqtt');
    client.publishMessage(pubTopic, MqttQos.atLeastOnce, builder.payload);
    // At this point, we are certain that the value isn't null so we can assign it anywhere inside the scope of our if block.
  }

  final connMessage = MqttConnectMessage()
      .authenticateAs('lorafora', 'foralora')
      .keepAliveFor(60)
      .withWillTopic('willtopic')
      .withWillMessage('Will message')
      .startClean()
      .withWillQos(MqttQos.atLeastOnce);
  client.connectionMessage = connMessage;
  try {
    await client.connect();
  } catch (e) {
    print('Exception: $e');
    client.disconnect();
  }

  client.updates?.listen((List<MqttReceivedMessage<MqttMessage>> c) {
    final MqttMessage message = c[0].payload;
    var payload;

    print('Received message:$payload from topic: ${c[0].topic}>');
  });

  return client;
}

// connection succeeded
void onConnected() {
  print('Connected');
}

// unconnected
void onDisconnected() {
  print('Disconnected');
}

// subscribe to topic succeeded
void onSubscribed(String topic) {
  print('Subscribed topic: $topic');
}

// subscribe to topic failed
void onSubscribeFail(String topic) {
  print('Failed to subscribe $topic');
}

// unsubscribe succeeded
void onUnsubscribed(String topic) {
  print('Unsubscribed topic: $topic');
}

// PING response received
void pong() {
  print('Ping response client callback invoked');
}
