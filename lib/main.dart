// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:whats_clone/HomeScreen.dart';
import 'package:whats_clone/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "WhatsApp Clone",
        home: AnimatedSplashScreen(
          splash: Splash(),
          duration: 1500,
          nextScreen: HomeScreen(),
          splashTransition: SplashTransition.fadeTransition,
        ));
  }
}
