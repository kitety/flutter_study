import 'package:flutter/material.dart';

import '../../../utils/currency.dart';
import '../../../utils/localization_transition.dart';

class DiamondRichText extends StatelessWidget {
  final double price;
  final int count;

  const DiamondRichText({
    Key? key,
    required this.price,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final price = formatPrice(this.price);
    final redeemedDiamondText =
        LT.t?.Like_RedeemedDiamondTitle_PageText1(count, price) ?? '';
    const splitSymbol = '@DIAMONDS@';
    List<String> redeemedDiamondParts = redeemedDiamondText.split(splitSymbol);
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.black),
        children: [
          TextSpan(text: redeemedDiamondParts[0]),
          const WidgetSpan(
            child: Image(
              image: AssetImage('images/stone.png'),
              width: 20,
            ),
          ),
          TextSpan(text: redeemedDiamondParts[1]),
        ],
      ),
    );
  }
}
