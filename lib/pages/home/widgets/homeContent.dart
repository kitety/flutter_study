import 'package:flutter/material.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';
import 'package:flutter_study/pages/home/util/homeContentFun.dart';
import 'package:flutter_study/pages/home/widgets/homeTopCard.dart';
import 'package:flutter_study/store/user/user_list_controller.dart';
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
                child: isShowTopCard
                    ? getTopCard(list, stoneCount, context)
                    : Container(),
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
      List<User> list, int stoneCount, BuildContext context) {
    return HomeTopCard(
        users: list.sublist(0, HomeContent.crossAxisCount),
        count: stoneCount,
        handleHiBtnClick: (user) {
          handleImageTap(context, stoneCount, (String msg, int count) {
            handleSendMessage(msg, count, user);
          });
        },
        padding: containerPadding);
  }

  void handleSendMessage(String msg, int count, User user) {
    final UserListController controller = Get.find();
    controller.reduceStoneCount(count);
    controller.addUserToChatById(user.id, msg);
  }
}
