import 'package:flutter/material.dart';
import 'package:masterclass6_flutterando/screens/home_screen.dart';
import 'package:masterclass6_flutterando/screens/info_animacoes.dart';
import 'package:masterclass6_flutterando/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Masterclass',
      initialRoute: '/',
      routes: {
        '/' : (context) => const SplashScreen(),
        '/home' : (context) => const HomeScreen(),
        '/infoAnimacoes' : (context) => const InfoAnimacoes(),
      }
    );
  }
}
