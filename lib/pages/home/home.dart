import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/home/widgets/homeContent.dart';
import 'package:flutter_study/utils/localization_transition.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: const HomeContent(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final searchTabTitle = LT.t?.searchTabTitle ?? '';
    return AppBar(
      titleSpacing: 10,
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
      actions: [
        Image.asset('images/like_icon.png', width: 30, height: 30),
        const SizedBox(width: 16)
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      bottomOpacity: 0,
    );
  }
}
