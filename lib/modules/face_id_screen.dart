import 'package:flutter/material.dart';
import 'package:raqib/modules/otp_screen.dart';

class FaceIdScreen extends StatelessWidget {
  const FaceIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/BiometricSecurity.png',
                height: 300,
              ),
              const SizedBox(height: 20),
              const Text(
                'Add Your Finger Print',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 48,
                width: 320,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => OtpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 48,
                width: 320,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => OtpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 2.0,
                        color: Colors.grey,
                      ),
                      backgroundColor: Colors.yellow[50],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(34))),
                  child: const Text(
                    'No Thanks',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
