import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'notepad.dart';

class SplashScreen extends StatelessWidget {
  final Widget? nextScreen;

  const SplashScreen({Key? key, this.nextScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
            duration: 2500,
            splashIconSize: 300,
            splash: Image.asset('images/Group 12.png'),
            nextScreen: const Notepad(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white));
  }
}
