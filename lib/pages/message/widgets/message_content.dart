import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_study/pages/message/components/userMsgCard/index.dart';

class MessageContent extends StatelessWidget {
  const MessageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        itemCount: 200,
        itemBuilder: (context, index) {
          return UserMsgCard(
            index: index,
          );
        },
      ),
    );
  }
}
