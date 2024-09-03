import 'package:flutter/material.dart';

import 'login_screen.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  const SecondOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Splash.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const Positioned(
            right: 48,
            top: 196,
            // bottom: 420,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Securing \n Your \n World",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "‘‘One Code at a Time: Your Trusted OTP \n Companion!’’",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 54,
                  alignment: Alignment.center,
                  child: MaterialButton(
                    elevation: 0,
                    height: 48,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const LoginScreen()));
                    },
                    color: Colors.yellow[700],
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
