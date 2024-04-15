import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/shop.dart';
import 'package:flutter_study/pages/diamond_shop/componets/gradient_btn.dart';
import 'package:flutter_study/utils/currency.dart';

const cardImgTypeSrcMap = {
  "box": "images/diamond_shop/box.png",
  "two": "images/diamond_shop/two.png",
  "single": singleStoneImg
};
const singleStoneImg = "images/diamond_shop/single.png";

class BuyStoneCardWidget extends StatelessWidget {
  // 这个卡片的宽高比
  static const cardHeight = 395.0;
  final Promotion promotion;
  const BuyStoneCardWidget({Key? key, required this.promotion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(promotion.type);
    final imgSrc = cardImgTypeSrcMap[promotion.type] ?? singleStoneImg;
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
              Image(
                image: AssetImage(imgSrc),
                height: 33,
              ),
              Text(
                '${promotion.count}',
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
                  '+${promotion.increaseCount}',
                  style: BodyText_16,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 14),
              // 自动占据剩余区域
              Expanded(child: Container()),
              GradientBtn(
                height: 36.0,
                text: formatPrice(promotion.money),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        getTopTip()
      ],
    );
  }

  Widget getTopTip() {
    if (!promotion.isShowTip) {
      return Container();
    }
    return Positioned(
      top: -10,
      right: 0,
      left: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientBtn(
            textSize: 12,
            height: 23.0,
            text: promotion.tipText,
            px: 9,
          )
        ],
      ),
    );
  }
}
