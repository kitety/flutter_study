import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('One time offer'),
        Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '80000',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Black_444,
                  fontWeight: FontWeight.w900),
            ),
            Image(
              image: AssetImage('images/stone.png'),
              width: 33,
            ),
          ],
        ),
      ],
    );
  }
}
