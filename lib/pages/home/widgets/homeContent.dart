import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';
import 'package:flutter_study/pages/home/util/homeContentFun.dart';
import 'package:flutter_study/pages/home/widgets/homeTopCard.dart';
import 'package:flutter_study/utils/localization_transition.dart';


class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeScrollContentState createState() => _HomeScrollContentState();
}

class _HomeScrollContentState extends State<HomeContent> {
  int stoneCount = 1000;

  late TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                HomeTopCard(
                  count: stoneCount,
                  handleImgClick: () {
                    handleImageTap(context, stoneCount, handleSendMessage);
                  },
                ),
                const SizedBox(height: 10.0),
                getTryBoost(context),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 9.0,
              childAspectRatio: 0.82,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext ctx, int index) {
                return UserCard(
                  count: stoneCount,
                  handleImgClick: () {
                    handleImageTap(context, stoneCount, handleSendMessage);
                  },
                );
              },
              childCount: 7,
            ),
          ),
        )
      ],
    );
  }

  Row getTryBoost(BuildContext context) {
    final tryBoostText = LT.t?.DailyPicks_ProfileBoostTry_PageText1 ?? '';
    final inviteBoostText = LT.t?.DailyPicks_ProfileBoostInvite_PageText1 ?? '';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          inviteBoostText,
          style: BodySentence_16.copyWith(color: Black_444),
        ),
        const SizedBox(width: 5.0),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                print('Try Boost');
              },
              child: Text(
                tryBoostText,
                style: BodyText_16.copyWith(
                  color: ThemeBlu_63D6FA
                ),
              ),
            ),
            const Image(
              image: AssetImage(
                'images/arrow.png',
              ),
              width: 18,
              height: 18,
            ),
          ],
        )
      ],
    );
  }

  void handleSendMessage(String msg, int count) {
    print(msg);
    setState(() {
      stoneCount -= count;
    });
  }
}
