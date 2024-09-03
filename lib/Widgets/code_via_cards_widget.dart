import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:raqib/Widgets/card_model.dart';

class CardsWidget extends StatelessWidget {
  final CardModel cardModel;

  const CardsWidget({
    super.key,
    required this.cardModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.grey,
      splashColor: Colors.grey,
      child: Container(
        width: 168,
        height: 64,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.yellow[50],
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.black45,
            width: 3,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              cardModel.iconPath ?? "",
              height: 34,
              width: 34,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 8),
            Text(
              cardModel.title ?? "ssss",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
