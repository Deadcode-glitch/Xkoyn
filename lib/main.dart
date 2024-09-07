import 'package:flutter/material.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:xcoin/dashboard.dart';
import 'package:xcoin/faqs2.dart';
import 'dart:js' as js;

import 'package:xcoin/firstscreen.dart';
import 'package:xcoin/home.dart';
import 'package:xcoin/minez.dart';
import 'package:xcoin/task.dart';
import 'package:xcoin/tester.dart';
import 'package:xcoin/ussf.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBIJKH8YRLEZswvNihme6ZP7ovliOKnZi8",
          appId: "1:142122818916:web:1433e233cb73aa6b9cae71",
          messagingSenderId: "142122818916",
          projectId: "xkoyn-app"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FirstScreen(),
    );
  }
}
