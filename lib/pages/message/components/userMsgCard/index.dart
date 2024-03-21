import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_study/pages/message/components/userMsgCard/row_action_widget.dart';
import 'package:flutter_study/pages/message/components/userMsgCard/user_msg_container.dart';
import 'package:flutter_study/utils/localization_transition.dart';

class UserMsgCard extends StatefulWidget {
  final int index;
  const UserMsgCard({Key? key, required this.index}) : super(key: key);

  @override
  State<UserMsgCard> createState() => _UserMsgCardState();
}

class _UserMsgCardState extends State<UserMsgCard> {
  @override
  Widget build(BuildContext context) {
    final deleteText = LT.t?.flashChatEndChat ?? '';
    return Slidable(
      key: ValueKey(widget.index),
      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        extentRatio: 0.35,
        dragDismissible: false,
        motion: const ScrollMotion(),
        children: [RowActionWidget(deleteText: deleteText)],
      ),
      child: const UserMsgContainer(),
    );
  }
}
