import 'package:flutter/material.dart';

class ToggleTabsLoginWidget extends StatelessWidget {
  final bool isEmailSelected;
  final ValueChanged<bool> onTabChanged;

  ToggleTabsLoginWidget(
      {super.key, required this.isEmailSelected, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => onTabChanged(true),
          child: Column(
            children: [
              Text(
                'Email',
                style: TextStyle(
                    color: isEmailSelected ? Colors.black : Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                height: 2.0,
                width: 50.0,
                color: isEmailSelected ? Colors.black : Colors.transparent,
              ),
            ],
          ),
        ),
        const SizedBox(width: 40.0),
        GestureDetector(
          onTap: () => onTabChanged(false),
          child: Column(
            children: [
              Text(
                'Phone Number',
                style: TextStyle(
                  color: !isEmailSelected ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                height: 2.0,
                width: 100.0,
                color: !isEmailSelected ? Colors.black : Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
