import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_study/pages/message/components/user_msg_card/index.dart';
import 'package:flutter_study/store/models/message_global.dart';
import 'package:provider/provider.dart';

class MessageContent extends StatelessWidget {
  const MessageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: Consumer<AppGlobalModelView>(
        builder: (context, appGlobalModelView, child) {
          final chatUsers = appGlobalModelView.chatList;
          final isHaveChatUser = chatUsers.isNotEmpty;
          final content = ListView.builder(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            itemCount: chatUsers.length,
            itemBuilder: (context, index) {
              final user = chatUsers[index];
              return UserMsgCard(
                user: user,
              );
            },
          );
          return isHaveChatUser ? content : const Center(child: Text('No Chat'),);
        },
      ),
    );
  }
}
