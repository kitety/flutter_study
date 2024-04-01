import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';
import 'package:flutter_study/pages/home/util/homeContentFun.dart';
import 'package:flutter_study/pages/home/widgets/homeTopCard.dart';
import 'package:flutter_study/store/user/user_list_controller.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:get/get.dart';

class HomeContent extends StatelessWidget {
  static double containerPadding = 10.0;

  static double crossAxisSpacing = 9.0;
  static int crossAxisCount = 2;
  static double cardWHRatio = 0.7; // 宽比高
  static double textHeight = 60.0;
  static var allGap =
      2 * containerPadding + crossAxisSpacing * (crossAxisCount - 1);

  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserListController>(
      builder: (controller) {
        final list = controller.users;
        int stoneCount = controller.stoneCount;
        final isShowTopCard = list.length >= 2;

        final double screenWidth = Get.width;
        double textHeight = 60.0;
        var cardWidth = (screenWidth - allGap) / 2;
        double cardItemHeight = textHeight + cardWidth / cardWHRatio;

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.fromLTRB(
                  containerPadding, 15, containerPadding, 0),
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
              padding: EdgeInsets.fromLTRB(
                  containerPadding, 10, containerPadding, 0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: crossAxisSpacing,
                    // childAspectRatio: 0.82,// 都可以自己算
                    mainAxisExtent: cardItemHeight // 可以自己算
                    ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                    final user = controller.users[index];
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
                  childCount: controller.users.length,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  HomeTopCard getTopCard(
      List<Rx<User>> list, int stoneCount, BuildContext context) {
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
    final UserListController controller = Get.find();
    controller.reduceStoneCount(count);
    controller.addUserToChatById(user.id, msg);
  }
}
