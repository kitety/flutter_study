import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';

class BuyStoneCard extends StatelessWidget {
  const BuyStoneCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 31, 10, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0), // 设置圆角半径为10
            border: Border.all(
              color: const Color.fromARGB(255, 238, 238, 238),
            ),
          ),
          child: Column(
            children: [
              const Image(
                image: AssetImage('images/stone.png'),
                width: 38,
              ),
              Text(
                '230',
                style: TitleText_24,
              ),
              const SizedBox(height: 2),
              Container(
                width: 88,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('images/diamond_shop/tips_bg.png'), // 背景图片路径
                    fit: BoxFit.contain, // 图片填充方式
                  ),
                ),
                child: Text(
                  '+50',
                  style: BodyText_16,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 14),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.0),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF646B.toInt()),
                      Color(0xFFFFA164.toInt()),
                    ], // 渐变色
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$0.99',
                        style: BodyText_16.copyWith(color: White_FFF)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -10,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 23,
                padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.0),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF646B.toInt()),
                      Color(0xFFFFA164.toInt()),
                    ], // 渐变色
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Text(
                  'Best Value',
                  style: BodySentence_12.copyWith(color: White_FFF),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
