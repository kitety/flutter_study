import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_study/components/userHiCard.dart';

class UserCard extends StatefulWidget {
  final bool isWhite;

  const UserCard({Key? key, this.isWhite = false}) : super(key: key);

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  int selectedCardIndex = 0;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const avatarImage = AssetImage('images/avatar.png');
    const likeImage = AssetImage('images/like_btn.png');
    const chatImage = AssetImage('images/chat.png');

    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: avatarImage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: 10.0,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: likeImage, width: 40, height: 40),
                    GestureDetector(
                      behavior:HitTestBehavior.translucent,
                      onTap: () {
                        handleImageTap();
                      },
                      child:
                          const Image(image: chatImage, width: 40, height: 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Laura Sofía Ureña',
                  style: TextStyle(
                      color: widget.isWhite
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 68, 68),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '2.4 km',
                  style: TextStyle(
                    color: widget.isWhite
                        ? Colors.white
                        : const Color.fromARGB(255, 189, 189, 189),
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void handleImageTap() {
    print('handleImageTap');
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight * 0.55;
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
        int padSubtract = Platform.isIOS ? 106 : 84;
        double bottomPad = MediaQuery.of(context).viewInsets.bottom;
        var width = MediaQuery.of(context).size.width;
        final bool isPad = width >= 500;
        double val = isPad ? 70 : max(bottomPad - padSubtract, 0);
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: val),
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              void _handleCardTap(int newIndex) {
                setState(() {
                  selectedCardIndex = newIndex;
                });
              }

              return SizedBox(
                height: height,
                child: Container(
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
                        child: Image.asset(
                          'images/avatar.png', // Path to your image
                          width: 90,
                          height: 90,
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
                            selectedCardIndex: selectedCardIndex,
                            handleCardTap: _handleCardTap,
                          ),
                          const SizedBox(width: 5),
                          UserHiCard(
                            imgSrc: 'images/hi_btn.png',
                            idx: 1,
                            selectedCardIndex: selectedCardIndex,
                            handleCardTap: _handleCardTap,
                          ),
                          const SizedBox(width: 5),
                          UserHiCard(
                            imgSrc: 'images/letter.png',
                            idx: 2,
                            selectedCardIndex: selectedCardIndex,
                            handleCardTap: _handleCardTap,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Balance: 1000',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 68, 68, 68),
                            ),
                          ),
                          Image(
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
                      Column(
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
                            'to Send UnlimitedMessages',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(
                                  255,
                                  189,
                                  189,
                                  189,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
