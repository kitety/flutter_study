import 'package:flutter/material.dart';
import 'package:flutter_study/components/userCard.dart';
import 'package:flutter_study/components/userHiCard.dart';
import 'package:flutter_study/widgets/homeTopCard.dart';

class HomeScrollContent extends StatefulWidget {
  const HomeScrollContent({Key? key}) : super(key: key);

  @override
  _HomeScrollContentState createState() => _HomeScrollContentState();
}

class _HomeScrollContentState extends State<HomeScrollContent> {
  static const textArr = ['Hello', 'Hi', "Holo"];

  int stoneCount = 1000;
  int _selectIndex = 0;

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
                  handleImgClick: handleImageTap,
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
                  handleImgClick: handleImageTap,
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

  void handleImageTap() {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      builder: (BuildContext context) {
        double bottomPad = MediaQuery.of(context).viewInsets.bottom;
        bool isHidden = bottomPad > 0;
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: bottomPad),
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              void _handleCardTap(int newIndex) {
                setState(() {
                  _selectIndex = newIndex;
                  controller.text = textArr[newIndex];
                });
              }

              return Container(
                padding: const EdgeInsets.fromLTRB(22, 33, 22, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'Say Hi to Sam',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 68, 68, 68),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 45, // 设置半径
                      child: ClipOval(
                        child: Image.asset(
                          'images/avatar.png',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        UserHiCard(
                          imgSrc: 'images/hi.png',
                          idx: 0,
                          selectedCardIndex: _selectIndex,
                          handleCardTap: _handleCardTap,
                        ),
                        const SizedBox(width: 5),
                        UserHiCard(
                          imgSrc: 'images/hi_btn.png',
                          idx: 1,
                          selectedCardIndex: _selectIndex,
                          handleCardTap: _handleCardTap,
                        ),
                        const SizedBox(width: 5),
                        UserHiCard(
                          imgSrc: 'images/letter.png',
                          idx: 2,
                          selectedCardIndex: _selectIndex,
                          handleCardTap: _handleCardTap,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Balance: $stoneCount',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 68, 68, 68),
                          ),
                        ),
                        const Image(
                          image: AssetImage('images/stone.png'),
                          width: 17,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0), // 设置圆角
                        border: Border.all(
                            color: const Color.fromARGB(
                                255, 216, 216, 216)), // 设置边框颜色
                      ),
                      child: TextField(
                        controller: controller,
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(fontSize: 14.0),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 20.0, bottom: 9),
                          hintText: "What's up 😁",
                          border: InputBorder.none,
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 68, 68, 68),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              print('send Message');
                              Navigator.of(context).pop();
                              setState(() {
                                stoneCount -= 80;
                                _selectIndex = 0;
                              });
                              controller.text = textArr[_selectIndex];
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'images/send_btn.png', // Path to your image
                                width: 36.0,
                                height: 36.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Visibility(
                      visible: !isHidden,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('Get Vip');
                            },
                            child: const Text(
                              'Get VIP',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(
                                  255,
                                  99,
                                  214,
                                  250,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'to Send Unlimited Messages',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(
                                  255,
                                  189,
                                  189,
                                  189,
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
      text: textArr[_selectIndex],
    );
  }
}
