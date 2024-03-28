import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/message/widgets/message_content.dart';

import '../../utils/localization_transition.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    var appBar = buildAppBar(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: MessageContent(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final searchTabTitle = LT.t?.chatTitle ?? '';
    // ApplicationLocalizations.of(context)?.chatTitle
    return AppBar(
      titleSpacing: 10,
      centerTitle: false,
      title: Text(
        searchTabTitle,
        style: TitleText_20.copyWith(
          color: ThemeRed_FF646B,
        ),
      ),
      leading: Container(
        width: 30,
        height: 30,
        padding: const EdgeInsets.only(left: 16),
        child: CircleAvatar(
          child: Image.asset(
            'images/avatar.png', // Path to your image
            width: 30.0,
            height: 30.0,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      bottomOpacity: 0,
    );
  }
}
