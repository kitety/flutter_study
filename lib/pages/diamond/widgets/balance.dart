import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond/common/btn_gradient.dart';

class Balance extends StatelessWidget {
  final int balance;
  const Balance({Key? key, required this.balance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: btnBgLinearGradient,
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
    return Row(
      // mainAxisSize: MainAxisSize.min,
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
