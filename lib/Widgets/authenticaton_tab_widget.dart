import 'package:flutter/material.dart';
import 'package:raqib/Widgets/card_model.dart';
import 'package:raqib/Widgets/code_via_cards_widget.dart';

class AuthenticationTabWidget extends StatefulWidget {
  const AuthenticationTabWidget({super.key});

  @override
  State<AuthenticationTabWidget> createState() => _EmailTabWidgetState();
}

List<CardModel> cards = [
  CardModel(
    title: 'SMS',
    iconPath: 'assets/Icons/sms.svg',
  ),
  CardModel(
    title: 'Email',
    iconPath: 'assets/Icons/messages-3.svg',
  ),
  CardModel(
    title: 'WhatsApp',
    iconPath: 'assets/Icons/whatsapp.svg',
  ),
  CardModel(
    title: 'OTP',
    iconPath: 'assets/Icons/security.svg',
  ),
];

class _EmailTabWidgetState extends State<AuthenticationTabWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/WomanusingOTPprotection.png',
            height: 300,
          ),
          const SizedBox(height: 5),
          const Text(
            'Get Code Via',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: [
              ...cards.map(
                (e) {
                  return CardsWidget(
                    cardModel: e,
                  );
                },
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
