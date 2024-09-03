import 'package:flutter/material.dart';
import 'package:raqib/Widgets/custom_textfield_widgets.dart';
import 'package:raqib/Widgets/header_login_widget.dart';
import 'package:raqib/Widgets/submit_button_login.dart';
import 'package:raqib/Widgets/toggle_tabs_login_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isEmailSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF3E7),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Design.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 196.0),
              child: HeaderLoginWidget(),
            ),
            Column(
              children: [
                const SizedBox(height: 396),
                ToggleTabsLoginWidget(
                  isEmailSelected: isEmailSelected,
                  onTabChanged: (bool value) {
                    setState(() {
                      isEmailSelected = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      if (isEmailSelected)
                        CustomTextFieldWidget(
                          hintText: 'Email',
                          isPassword: false,
                        ),
                      if (!isEmailSelected)
                        CustomTextFieldWidget(
                          hintText: 'Phone Number',
                          isPassword: false,
                        ),
                      if (isEmailSelected) ...[
                        const SizedBox(height: 20),
                        CustomTextFieldWidget(
                          hintText: 'Password',
                          isPassword: true,
                        ),
                      ],
                      const SizedBox(height: 30),
                      SubmitButtonLogin(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
