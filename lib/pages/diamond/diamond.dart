import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond/widgets/balance.dart';
import 'package:flutter_study/pages/diamond/widgets/popular_card.dart';

class Diamond extends StatelessWidget {
  const Diamond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFF6962.toInt()),
                  Color(0xFFFF9B56.toInt())
                ], // 定义渐变颜色
              ),
            ),
          ),
          title: Text(
            'Diamond Shop',
            style: TitleText_18.copyWith(color: White_FFF),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 32,
            ),
            onPressed: () {
              // 处理按钮按下事件，例如打开一个抽屉菜单
            },
          ),
        ),
        // 后面需要替换为滚动组件
        body: const Column(
          children: [
            Balance(),
            PopularCard(),
          ],
        ));
  }
}
