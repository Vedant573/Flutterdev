import 'package:flutter/material.dart';
import 'package:test2/Screens/Login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}




