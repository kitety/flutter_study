import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond/widgets/balance.dart';
import 'package:flutter_study/pages/diamond/widgets/buy_stone_card.dart';
import 'package:flutter_study/pages/diamond/widgets/join_vip_card.dart';
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
        body: ListView(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          children: const [
            // 顶部余额
            Balance(),
            SizedBox(
              height: 31,
            ),
            // most popular
            PopularCard(),
            SizedBox(
              height: 37,
            ),
            // join vip
            JoinVipCard(),
            SizedBox(
              height: 38,
            ),
            BuyStoneCard()
          ],
        ));
  }
}
