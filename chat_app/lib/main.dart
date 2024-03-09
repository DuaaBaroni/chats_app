// ignore_for_file: unused_import


import 'package:chat_app/auth/signup.dart';
import 'package:chat_app/chat_view.dart';
import 'package:chat_app/conversion.dart';
import 'package:chat_app/ggg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignUp()
    );
  }
}

