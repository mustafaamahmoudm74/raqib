import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:raqib/modules/second_on_boarding.dart';

class FirstOnBoardingScreen extends StatelessWidget {
  const FirstOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 5000,
      splashIconSize: double.infinity,
      splash: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/Splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/Raqib_Logo.png",
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      nextScreen: const SecondOnBoardingScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.transparent,
    );
  }
}
