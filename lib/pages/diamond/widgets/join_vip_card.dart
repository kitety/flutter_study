import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';

// const

class JoinVipCard extends StatelessWidget {
  const JoinVipCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(11, 33, 11, 10),
          decoration: BoxDecoration(
            color: Color(0xFFFEF9E8.toInt()),
            borderRadius: BorderRadius.circular(20.0), // 设置圆角半径为10
            boxShadow: [
              BoxShadow(
                color: Color(
                  0x1A000000.toInt(),
                ),
                spreadRadius: 5,
                blurRadius: 20,
                offset: const Offset(0, 2), // 阴影偏移量
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Join VIP and get',
                style: TitleText_18,
              ),
              const SizedBox(height: 6),
              Text(
                'for free per month',
                style: TitleText_18,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 9),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF5CC6D.toInt()),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          // images/diamond_shop/zoom_icon.png
                          const Image(
                            image:
                                AssetImage('images/diamond_shop/zoom_icon.png'),
                            width: 42,
                          ),
                          Text(
                            'Fine Tune Your Search',
                            style: BodySentence_14,
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 9),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF5CC6D.toInt()),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          // images/diamond_shop/zoom_icon.png
                          const Image(
                            image: AssetImage(
                                'images/diamond_shop/person_like_icon.png'),
                            width: 42,
                          ),
                          Text(
                            'Fine Tune Your Search',
                            style: BodySentence_14,
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 9),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF5CC6D.toInt()),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          // images/diamond_shop/zoom_icon.png
                          const Image(
                            image: AssetImage(
                                'images/diamond_shop/message_icon.png'),
                            width: 42,
                          ),
                          Text(
                            'Fine Tune Your Search',
                            style: BodySentence_14,
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
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
                    Text(
                      'Join Now',
                      style: BodyText_16.copyWith(color: White_FFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -28,
          left: 22,
          child: Container(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Image(
                  image: AssetImage('images/diamond_shop/stones_icon.png'),
                  width: 45,
                ),
                Text(
                  '+',
                  style: TextStyle(
                    color: Color(
                      0xFFFFD330.toInt(),
                    ),
                    fontSize: 40,
                  ),
                ),
                const Image(
                  image: AssetImage('images/diamond_shop/stones_icon.png'),
                  width: 45,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
