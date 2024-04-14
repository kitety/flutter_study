import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/shop.dart';
import 'package:flutter_study/pages/diamond_shop/componets/gradient_btn.dart';
import 'package:flutter_study/utils/currency.dart';
import 'package:flutter_study/utils/localization_transition.dart';

class PopularCardWidget extends StatelessWidget {
  final int countValue;
  const PopularCardWidget({
    super.key,
    required this.countValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$countValue',
          style: TitleText_16.copyWith(
            fontSize: 24,
          ),
        ),
        const Image(
          image: AssetImage(
            'images/diamond_shop/stone_icon.png',
          ),
          height: 20,
        )
      ],
    );
  }
}

class PopularCard extends StatelessWidget {
  final Promotion promotion;
  const PopularCard({Key? key, required this.promotion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countValue = promotion.count;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 22, 10, 10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/diamond_shop/vip_bg.jpg'),
              fit: BoxFit.cover,
            ), // 设置圆角半径为10
          ),
          child: Column(
            children: [
              Text(
                LT.t?.Purchase_DiamondShopMostPopular_PageText1 ?? '',
                style: TitleText_18,
              ),
              const SizedBox(height: 5),
              PopularCardWidget(
                countValue: countValue,
              ),
              const SizedBox(height: 12),
              GradientBtn(
                px: 12,
                height: 38.0,
                text: formatPrice(promotion.money),
              )
            ],
          ),
        ),
        getTopTextWidget()
      ],
    );
  }

  Positioned getTopTextWidget() {
    return Positioned(
      top: -10,
      right: 0,
      left: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientBtn(
            textSize: 12,
            px: 9,
            height: 23.0,
            text: LT.t?.Purchase_DiamondShopMostPopularTip_ItemText ?? '',
          )
        ],
      ),
    );
  }
}
