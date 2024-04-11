import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/common/wording_pattern/wording_image_pattern.dart';
import 'package:flutter_study/pages/diamond/componets/gradient_btn.dart';
import 'package:flutter_study/utils/localization_transition.dart';

class JoinVipCard extends StatelessWidget {
  const JoinVipCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const stoneCount = 600;
    String vipPromotionTip =
        LT.t?.Purchase_DiamondShopVIPCard_PageText1(stoneCount) ?? '';
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
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              getCardTopRichText(vipPromotionTip, stoneCount),
              const SizedBox(height: 6),
              Text(
                LT.t?.Purchase_DiamondShopVIPCard_PageText2 ?? '',
                style: BodyText_18,
              ),
              const SizedBox(height: 12),
              getAdvantagesListWidget(),
              const SizedBox(height: 10),
              GradientBtn(
                height: 38.0,
                text: LT.t?.Purchase_DiamondShopVIPCardJoin_Button ?? '',
              )
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

  IntrinsicHeight getAdvantagesListWidget() {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  const Image(
                    image: AssetImage(
                      'images/diamond_shop/zoom_icon.png',
                    ),
                    height: 42,
                  ),
                  Text(
                    LT.t?.Purchase_DiamondShopVIPCardItem1_ItemText ?? '',
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
                  const Image(
                    image: AssetImage(
                      'images/diamond_shop/person_like_icon.png',
                    ),
                    height: 42,
                  ),
                  Text(
                    LT.t?.Purchase_DiamondShopVIPCardItem2_ItemText ?? '',
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
                  const Image(
                    image: AssetImage(
                      'images/diamond_shop/message_icon.png',
                    ),
                    height: 42,
                  ),
                  Text(
                    LT.t?.Purchase_DiamondShopVIPCardItem3_ItemText ?? '',
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
    );
  }

  SizedBox getCardTopRichText(String vipPromotionTip, int stoneCount) {
    return SizedBox(
      width: 300,
      child: EasyRichText(
        vipPromotionTip,
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
          EasyRichTextPattern(targetString: 'VIP', style: TitleText_16),
          EasyRichTextPattern(
            targetString: stoneCount.toString(),
            style: TitleText_16,
          ),
        ],
      ),
    );
  }
}
