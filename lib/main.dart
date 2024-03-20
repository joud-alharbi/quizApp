import 'package:flutter/material.dart';
import 'package:my_quize_app/screens/Category.dart';
import 'package:my_quize_app/screens/login.dart';
import 'package:my_quize_app/screens/splash_screen.dart';
import 'package:my_quize_app/screens/question.dart';

import 'dart:ui';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quize App',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed (seedColor:Color.fromARGB(255, 7, 12, 3)) ,
         useMaterial3: true,
      ),
home: SplashScreen(),
);
  }
}
