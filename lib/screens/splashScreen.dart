import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:searchimagine/main.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  get splash =>null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash:
    Column(
      children: [
       Center(
      
       )     
      ],
    ) , 
    nextScreen: const MyHomePage(),
    splashIconSize: 100,
    backgroundColor: const Color.fromARGB(255, 107,159 , 248), 
    );
    
  }
}