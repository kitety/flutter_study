import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF9B56.toInt()),
            Color(0xFFFFA164.toInt()),
          ], // 渐变颜色数组
          begin: Alignment.topCenter, // 渐变开始位置
          end: Alignment.bottomCenter, // 渐变结束位置
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            'Balance',
            style: BodyText_16.copyWith(color: White_FFF),
          ),
          const SizedBox(
            height: 9,
          ),
          buildBalanceCountWidget(),
          const SizedBox(
            height: 36,
          ),
        ],
      ),
    );
  }

  Row buildBalanceCountWidget() {
    const int balanceCount = 80000;
    return const Row(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '80000',
          style: TextStyle(
              fontSize: 30.0, color: White_FFF, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          width: 1,
        ),
        Image(
          image: AssetImage('images/stone.png'),
          width: 33,
        ),
      ],
    );
  }
}
