import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quickalert/quickalert.dart';

class OtpTabWidget extends StatefulWidget {
  const OtpTabWidget({super.key});

  @override
  State<OtpTabWidget> createState() => _OtpTabWidgetState();
}

class _OtpTabWidgetState extends State<OtpTabWidget> {
  late TextEditingController _pinController = TextEditingController();

  void _handleSubmit() {
    String pin = _pinController.text.trim();

    if (pin.isNotEmpty) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        title: 'Done!',
        autoCloseDuration: const Duration(seconds: 3),
        showConfirmBtn: false,
      );
    } else {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Time Is Up',
        text: 'This OTP Code Is Invalid',
        autoCloseDuration: const Duration(seconds: 6),
        showConfirmBtn: false,
        backgroundColor: Colors.yellow[50]!,
        titleColor: Colors.black,
        textColor: Colors.black,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Passcodesecurity.png',
              height: 300,
            ),
            const SizedBox(height: 10),
            const Text(
              'OTP Code',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            PinCodeTextField(
              appContext: context,
              length: 6,
              controller: _pinController,
              onChanged: (value) {},
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(16),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.yellow[50],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '00:00',
              style: TextStyle(
                  fontSize: 16, color: Colors.red, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Container(
              height: 48,
              width: 320,
              child: ElevatedButton(
                onPressed: _handleSubmit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn't receive your OTP?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey[400],
                  ),
                  child: const Text(
                    "Send again",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
