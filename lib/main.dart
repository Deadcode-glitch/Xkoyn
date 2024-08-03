import 'package:flutter/material.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:xcoin/dashboard.dart';
import 'dart:js' as js;

import 'package:xcoin/firstscreen.dart';
import 'package:xcoin/minez.dart';
import 'package:xcoin/tester.dart';
import 'package:xcoin/ussf.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB5Nj3k3kPtjLhp5991731ZAFr-g408JQ0",
          appId: "1:153612046895:web:3ef7e0ea71183cb3e92cda",
          messagingSenderId: "153612046895",
          projectId: "pocket-4c593"));
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
