import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/firebase_options.dart';
import 'package:get/get.dart';
import 'app.dart';

/// --- Entry point of Flutter App ---
Future<void> main() async {
  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initiaize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Todo: Initiaize Authentication

  // Load all the Material Design / Themes / Localizations / Bindings
  runApp(const App());
}
