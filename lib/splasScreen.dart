import 'package:agsam/homePage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class Splasscreen extends StatelessWidget {
  const Splasscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(child: Image(image: AssetImage('assets/Lott/Task.gif'))),

      nextScreen: Homepage(),
    );
  }
}
