import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/common/wording_pattern/wording_image_pattern.dart';
import 'package:flutter_study/model/shop.dart';
import 'package:flutter_study/pages/diamond/common/btn_gradient.dart';
import 'package:get/get.dart';

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
    return GetBuilder(
      builder: (controller) => EasyRichText(
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
      ),
    );
  }
}

class PopularCard extends StatelessWidget {
  final Promotion promotion;
  const PopularCard({Key? key, required this.promotion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const countValue = 200;
    const String stoneCountStr = '$countValue @DIAMONDS@';
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
                'One time offer',
                style: TitleText_18,
              ),
              const SizedBox(height: 5),
              const getMostPopularStone(
                stoneCountStr: stoneCountStr,
                countValue: countValue,
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.0),
                  gradient: btnBgLinearGradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$${promotion.money}',
                      style: BodyText_16.copyWith(color: White_FFF),
                    ),
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
                  gradient: btnBgLinearGradient,
                ),
                child: Text(
                  'Most popular',
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
