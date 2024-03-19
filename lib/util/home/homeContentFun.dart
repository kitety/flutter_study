import 'package:flutter/material.dart';
import 'package:flutter_study/components/userHiCard.dart';

const textArr = ['Hello', 'Hi', "Holo"];
Row buildBalanceWidget(int stoneCount) {
  return Row(
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
  );
}

CircleAvatar buildCircleAvatarWidget() {
  return CircleAvatar(
    radius: 45, // 设置半径
    child: ClipOval(
      child: Image.asset(
        'images/avatar.png',
        width: 90,
        height: 90,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Visibility buildFooterWidget(bool isHidden) {
  return Visibility(
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
  );
}

Row buildRowImgList(
    int selectIndex, void Function(int newIndex) handleCardTap) {
  return Row(
    children: [
      UserHiCard(
        imgSrc: 'images/hi.png',
        idx: 0,
        selectedCardIndex: selectIndex,
        handleCardTap: handleCardTap,
      ),
      const SizedBox(width: 5),
      UserHiCard(
        imgSrc: 'images/hi_btn.png',
        idx: 1,
        selectedCardIndex: selectIndex,
        handleCardTap: handleCardTap,
      ),
      const SizedBox(width: 5),
      UserHiCard(
        imgSrc: 'images/letter.png',
        idx: 2,
        selectedCardIndex: selectIndex,
        handleCardTap: handleCardTap,
      ),
    ],
  );
}

Container buildTextInputWidget(
    TextEditingController controller,
    BuildContext context,
    StateSetter setState,
    int stoneCount,
    int selectIndex,
     void Function(String, int)  handleSendMessage) {
  return Container(
    height: 44,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22.0), // 设置圆角
      border:
          Border.all(color: const Color.fromARGB(255, 216, 216, 216)), // 设置边框颜色
    ),
    child: TextField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      style: const TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20.0, bottom: 9),
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
              selectIndex = 0;
            });
            handleSendMessage(controller.text, 80);
            controller.text = textArr[selectIndex];
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
  );
}

void handleImageTap(
  BuildContext context,
  int stoneCount,
  void Function(String, int) handleSendMessage,
) {
  int selectIndex = 0;
  late TextEditingController controller = TextEditingController(
    text: textArr[selectIndex],
  );

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
                selectIndex = newIndex;
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
                  buildCircleAvatarWidget(),
                  const SizedBox(
                    height: 32,
                  ),
                  buildRowImgList(selectIndex, _handleCardTap),
                  const SizedBox(
                    height: 24,
                  ),
                  buildBalanceWidget(stoneCount),
                  const SizedBox(
                    height: 16,
                  ),
                  buildTextInputWidget(controller, context, setState,
                      stoneCount, selectIndex, handleSendMessage),
                  const SizedBox(
                    height: 40,
                  ),
                  buildFooterWidget(isHidden)
                ],
              ),
            );
          }),
        ),
      );
    },
  );
}
