import 'package:flutter/material.dart';
import 'package:fyp/Booking_history.dart';
import 'package:fyp/Nexus_tariffs.dart';
import 'package:fyp/Request_charge.dart';
import 'package:fyp/Vehicle_health.dart';
import 'package:fyp/Wifi_connect.dart';
import 'package:fyp/qr_code.dart';
import 'package:fyp/Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/qr': (contexr) => MyHome(),
      '/tariffs': (context) => Nexus(),
      '/history': (context) => History(),
      '/charge': (context) => Charge(),
      '/health': (context) => Health(),
      '/wifi':(context)=> MyApp(),

    },
  ));
}

