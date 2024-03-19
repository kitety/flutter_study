import 'package:flutter/material.dart';
import 'package:flutter_study/components/userCard.dart';
import 'package:flutter_study/util/home/homeContentFun.dart';
import 'package:flutter_study/widgets/homeTopCard.dart';

class HomeScrollContent extends StatefulWidget {
  const HomeScrollContent({Key? key}) : super(key: key);

  @override
  _HomeScrollContentState createState() => _HomeScrollContentState();
}

class _HomeScrollContentState extends State<HomeScrollContent> {
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
                getTryBoost(),
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

  Row getTryBoost() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Want to be here too?',
          style: TextStyle(
            color: Color.fromARGB(255, 68, 68, 68),
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 5.0),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                print('Try Boost');
              },
              child: const Text(
                'Try Boost',
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    99,
                    214,
                    250,
                  ),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
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
