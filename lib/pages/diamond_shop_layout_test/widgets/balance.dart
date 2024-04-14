import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond_shop/common/btn_gradient.dart';
import 'package:flutter_study/utils/localization_transition.dart';

class BalanceWidget extends StatelessWidget {
  static double topPadding = 15.0;
  static double textHeight = 23.0;
  static double textPaddingBottom = 9.0;
  static double balanceContentHeight = 43.0;
  static double bottomPadding = 36.0;
  // 高度和
  static double containerHeight = topPadding +
      textHeight +
      textPaddingBottom +
      balanceContentHeight +
      bottomPadding;
  final int balance;
  const BalanceWidget({Key? key, required this.balance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      decoration: BoxDecoration(
        gradient: btnBgLinearGradient,
      ),
      child: Column(
        children: [
          SizedBox(
            height: topPadding,
          ),
          Text(
            LT.t?.Purchase_DiamondShopBalance_PageText1 ?? '',
            style: BodyText_16.copyWith(color: White_FFF),
          ),
          SizedBox(
            height: textPaddingBottom,
          ),
          buildBalanceCountWidget(),
          SizedBox(
            height: bottomPadding,
          ),
        ],
      ),
    );
  }

  Row buildBalanceCountWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$balance',
          style: const TextStyle(
              fontSize: 30.0, color: White_FFF, fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          width: 1,
        ),
        const Image(
          image: AssetImage('images/stone.png'),
          width: 33,
        ),
      ],
    );
  }
}
