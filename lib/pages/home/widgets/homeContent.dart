import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/user_model.dart';
import 'package:flutter_study/pages/home/components/userCard.dart';
import 'package:flutter_study/pages/home/util/homeContentFun.dart';
import 'package:flutter_study/pages/home/widgets/homeTopCard.dart';
import 'package:flutter_study/store/models/app_global.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:provider/provider.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeScrollContentState createState() => _HomeScrollContentState();
}

class _HomeScrollContentState extends State<HomeContent> {
  User? sendMessageUser;
  late TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Consumer<AppGlobalModelView>(
      builder: (context, globalViewModel, child) {
        final list = globalViewModel.users;
        final stoneCount = globalViewModel.stoneCount;
        final isShowTopCard = list.length >= 2;

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 9.0,
                  childAspectRatio: 0.82,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, int index) {
                    final user = globalViewModel.users[index];
                    return UserCard(
                      user: user,
                      count: stoneCount,
                      handleHiBtnClick: (user) {
                        sendMessageUser = user;
                        handleImageTap(context, stoneCount, handleSendMessage);
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
        sendMessageUser = user;
        handleImageTap(context, stoneCount, handleSendMessage);
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

  void handleSendMessage(String msg, int count) {
    Provider.of<AppGlobalModelView>(context, listen: false)
        .reduceStoneCount(count);
    Provider.of<AppGlobalModelView>(context, listen: false)
        .addUserToChatById(sendMessageUser!.id);
  }
}
