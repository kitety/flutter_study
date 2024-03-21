import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_study/utils/localization_transition.dart';

class UserMsgCard extends StatefulWidget {
  final int index;
  const UserMsgCard({Key? key, required this.index}) : super(key: key);

  @override
  State<UserMsgCard> createState() => _UserMsgCardState();
}

class UserMsgContainer extends StatelessWidget {
  const UserMsgContainer({
    super.key,
  });

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
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                'Eden Danny',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'See you there',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _UserMsgCardState extends State<UserMsgCard> {
  @override
  Widget build(BuildContext context) {
    final deleteText = LT.t?.flashChatEndChat ?? '';
    var actionPane = ActionPane(
      extentRatio: 0.35,
      dragDismissible: false,
      motion: const ScrollMotion(),
      children: [
        Expanded(
          child: GestureDetector(
            onDoubleTap: () {
              print('delete');
            },
            child: Container(
              color: const Color(0xFFC24E45),
              width: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    deleteText,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
    return Slidable(
      key: ValueKey(widget.index),
      // The end action pane is the one at the right or the bottom side.
      endActionPane: actionPane,
      child: const UserMsgContainer(),
    );
  }
}
