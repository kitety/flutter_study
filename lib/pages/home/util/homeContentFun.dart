import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/home/components/userHiCard.dart';
import 'package:flutter_study/utils/localization_transition.dart';

const textArr = ['Hello', 'Hi', "Holo"];
Row buildBalanceWidget(int stoneCount) {
  final balanceText = LT.t?.Purchase_BuyDiamondCountTitle_PageText2 ?? '';
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '$balanceText: $stoneCount',
        style: BodySentence_14.copyWith(
          color: Black_444,
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
          child: Text(
            LT.t?.getVIP ?? '',
            style: BodyText_14.copyWith(
              color: ThemeBlu_63D6FA,
            ),
          ),
        ),
        Text(
          LT.t?.Chat_SayhiSendBottomTip_DialogText2 ?? '',
          style: BodySentence_14.copyWith(
            color: Gray_BD,
          ),
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
    void Function(String, int) handleSendMessage) {
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
      style: BodyText_14,
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

            handleSendMessage(controller.text, 80);
            Navigator.of(context).pop();
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
                  Text(
                    'Say Hi to Sam',
                    style: TitleText_20.copyWith(color: Black_444),
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
