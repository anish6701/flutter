import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/Home.dart';
import 'package:myapp/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'MyApp Cynergy Technologies';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: AnimatedSplashScreen(
        splash: Icons.home,
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        // pageTransitionType: PageTransitionType.scale,
        backgroundColor: Colors.blue,
        nextScreen: const MyHomePage(title: 'Home',)),
    
       
    );
  }
}

