import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond/common/btn_gradient.dart';

class GradientBtn extends StatelessWidget {
  final String text;
  final double height;
  final int textSize;
  final int px;
  const GradientBtn({
    Key? key,
    required this.text,
    required this.height,
    this.textSize = 16,
    this.px = 0,
    // width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: px.toDouble()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height / 2),
        gradient: btnBgLinearGradient,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: BodyText_16.copyWith(
              color: White_FFF,
              fontSize: textSize.toDouble(),
            ),
          ),
        ],
      ),
    );
  }
}
