import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/common/wording_pattern/wording_image_pattern.dart';
import 'package:flutter_study/model/shop.dart';
import 'package:flutter_study/pages/diamond/componets/gradient_btn.dart';
import 'package:flutter_study/utils/currency.dart';
import 'package:flutter_study/utils/localization_transition.dart';

class getMostPopularStone extends StatelessWidget {
  final String stoneCountStr;

  final int countValue;
  const getMostPopularStone({
    super.key,
    required this.stoneCountStr,
    required this.countValue,
  });

  @override
  Widget build(BuildContext context) {
    return EasyRichText(
      stoneCountStr,
      defaultStyle: BodyText_18,
      textAlign: TextAlign.center,
      patternList: [
        EasyRichTextPattern(
          targetString: WordingImagePattern.diamonds,
          style: BodyText_16,
          matchBuilder: (c, s) {
            return WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Image.asset(
                  WordingImagePattern.getImagePath(
                      WordingImagePattern.diamonds),
                  height: 20,
                ),
              ),
            );
          },
        ),
        EasyRichTextPattern(
          targetString: countValue.toString(),
          style: TitleText_16.copyWith(
            fontSize: 24,
          ),
        ),
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
    final String stoneCountStr = '$countValue @DIAMONDS@';
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
              getMostPopularStone(
                stoneCountStr: stoneCountStr,
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
