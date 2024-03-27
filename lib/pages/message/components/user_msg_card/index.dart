import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/message/components/user_msg_card/row_action_widget.dart';
import 'package:flutter_study/pages/message/components/user_msg_card/user_msg_container.dart';
import 'package:flutter_study/store/models/message_global.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:provider/provider.dart';

class UserMsgCard extends StatefulWidget {
  final User user;
  const UserMsgCard({Key? key, required this.user}) : super(key: key);

  @override
  State<UserMsgCard> createState() => _UserMsgCardState();
}

class _UserMsgCardState extends State<UserMsgCard> {
  @override
  Widget build(BuildContext context) {
    final deleteText = LT.t?.flashChatEndChat ?? '';
    return Slidable(
      key: ValueKey(widget.user.id),
      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        extentRatio: 0.35,
        dragDismissible: false,
        motion: const ScrollMotion(),
        children: [
          RowActionWidget(
              deleteText: deleteText, handleDeleteChat: handleDeleteChat)
        ],
      ),
      child: UserMsgContainer(user: widget.user),
    );
  }

  void handleDeleteChat() {
    Provider.of<AppGlobalModelView>(context, listen: false)
        .deleteChatById(widget.user.id);
  }
}
