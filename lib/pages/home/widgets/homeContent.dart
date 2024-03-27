import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';
import 'package:flutter_study/pages/home/util/homeContentFun.dart';
import 'package:flutter_study/pages/home/widgets/homeTopCard.dart';
import 'package:flutter_study/store/models/message_global.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:provider/provider.dart';

class HomeContent extends StatefulWidget {
  static double containerPadding = 10.0;

  static double crossAxisSpacing = 9.0;
  static int crossAxisCount = 2;
  static double cardWHRatio = 0.7; // 宽比高
  static double textHeight = 60.0;
  static var allGap =
      2 * containerPadding + crossAxisSpacing * (crossAxisCount - 1);
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeScrollContentState createState() => _HomeScrollContentState();
}

class _HomeScrollContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppGlobalModelView>(
      builder: (context, globalViewModel, child) {
        final list = globalViewModel.users;
        final stoneCount = globalViewModel.stoneCount;
        final isShowTopCard = list.length >= 2;

        final Size screenSize = MediaQuery.of(context).size;
        final double screenWidth = screenSize.width;
        double textHeight = 60.0;
        var cardWidth = (screenWidth - HomeContent.allGap) / 2;
        double cardItemHeight =
            textHeight + cardWidth / HomeContent.cardWHRatio;
        print('111');
        print(cardWidth);
        print(cardItemHeight);

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.fromLTRB(HomeContent.containerPadding, 15,
                  HomeContent.containerPadding, 0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    isShowTopCard
                        ? getTopCard(list, stoneCount, context)
                        : Container(),
                    const SizedBox(height: 10.0),
                    getTryBoost(context),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(HomeContent.containerPadding, 10,
                  HomeContent.containerPadding, 0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: HomeContent.crossAxisCount,
                    crossAxisSpacing: HomeContent.crossAxisSpacing,
                    // childAspectRatio: 0.82,// 都可以自己算
                    mainAxisExtent: cardItemHeight // 可以自己算
                    ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                    final user = globalViewModel.users[index];
                    return UserCard(
                      user: user,
                      count: stoneCount,
                      handleHiBtnClick: (user) {
                        // 应该用返回值
                        handleImageTap(
                          context,
                          stoneCount,
                          (String msg, int count) {
                            handleSendMessage(msg, count, user);
                          },
                        );
                      },
                    );
                  },
                  childCount: globalViewModel.users.length,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  HomeTopCard getTopCard(
      List<User> list, int stoneCount, BuildContext context) {
    return HomeTopCard(
      users: list.sublist(0, 2),
      count: stoneCount,
      handleHiBtnClick: (user) {
        handleImageTap(context, stoneCount, (String msg, int count) {
          handleSendMessage(msg, count, user);
        });
      },
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
                style: BodyText_16.copyWith(color: ThemeBlu_63D6FA),
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

  void handleSendMessage(String msg, int count, User user) {
    Provider.of<AppGlobalModelView>(context, listen: false)
        .reduceStoneCount(count);
    Provider.of<AppGlobalModelView>(context, listen: false)
        .addUserToChatById(user.id, msg);
  }
}
