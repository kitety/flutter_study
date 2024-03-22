import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/model/user_model.dart';

class UserMsgContainer extends StatelessWidget {
  final User user;
  const UserMsgContainer({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 33, // 设置半径
            child: ClipOval(
              child: Image.asset(
                'images/avatar.png',
                width: 66,
                height: 66,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                'Eden Danny',
                style: BodyText_16,
              ),
              const SizedBox(height: 8),
              Text(
                'See you there',
                style: BodySentence_16,
              )
            ],
          )
        ],
      ),
    );
  }
}
