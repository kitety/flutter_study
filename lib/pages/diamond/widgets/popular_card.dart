import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_study/common/constant.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 22, 10, 10),
            decoration: BoxDecoration(
              color: Colors.blue, // 背景色为蓝色
              borderRadius: BorderRadius.circular(20.0), // 设置圆角半径为10
            ),
            child: Column(
              children: [
                Text('One time offer'),
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '200',
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
                Container(
                  width: double.infinity,
                  height: 38,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 23,
                  padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
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
                    'Most popular',
                    style: BodySentence_12.copyWith(color: White_FFF),
                  ),
                ),
              ],
            ),
            top: -10,
            right: 0,
            left: 0,
          )
        ],
      ),
    );
  }
}
