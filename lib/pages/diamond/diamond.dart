import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond/widgets/balance.dart';
import 'package:flutter_study/pages/diamond/widgets/buy_stone_card.dart';
import 'package:flutter_study/pages/diamond/widgets/join_vip_card.dart';
import 'package:flutter_study/pages/diamond/widgets/popular_card.dart';

class Diamond extends StatefulWidget {
  const Diamond({Key? key}) : super(key: key);

  @override
  State<Diamond> createState() => _DiamondState();
}

class _DiamondState extends State<Diamond> {
  num showActionScrollHeight = 116;
  bool isShowAction = false;
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // 后面需要替换为滚动组件
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.all(0),
            sliver: SliverToBoxAdapter(
              child: Balance(),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.fromLTRB(25, 31, 25, 0),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  // most popular
                  PopularCard(),
                  SizedBox(
                    height: 37,
                  ),
                  // join vip
                  JoinVipCard(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(25, 38, 25, 0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const BuyStoneCard();
                },
                childCount: 23,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                childAspectRatio: 0.85,
                mainAxisSpacing: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      actions: [
        isShowAction
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '8000',
                    style: BodyText_14.copyWith(
                      color: White_FFF,
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  const Image(
                    image: AssetImage('images/stone.png'),
                    width: 15,
                  ),
                  const SizedBox(
                    width: 16,
                  )
                ],
              )
            : Container(),
      ],
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
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.removeListener(_scrollListener); // 移除滚动监听器
    _scrollController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    EasyDebounce.debounce('_scrollListener', const Duration(milliseconds: 30), () {
      double currentScrollOffset = _scrollController.offset;
      print('$currentScrollOffset');
      setState(() {
        isShowAction = currentScrollOffset >= showActionScrollHeight;
      });
    });
  }
}
