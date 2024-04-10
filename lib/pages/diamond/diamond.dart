import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond/common/btn_gradient.dart';
import 'package:flutter_study/pages/diamond/widgets/balance.dart';
import 'package:flutter_study/pages/diamond/widgets/buy_stone_card.dart';
import 'package:flutter_study/pages/diamond/widgets/join_vip_card.dart';
import 'package:flutter_study/pages/diamond/widgets/popular_card.dart';
import 'package:flutter_study/store/shop/shop.dart';
import 'package:get/get.dart';
import 'package:throttling/throttling.dart';

class Diamond extends StatefulWidget {
  const Diamond({Key? key}) : super(key: key);

  @override
  State<Diamond> createState() => _DiamondState();
}

class _DiamondState extends State<Diamond> {
  num showActionScrollHeight = 116; // 滚动多远需要展示右侧的action
  bool isShowAction = false;
  final ScrollController _scrollController = ScrollController();
  final throttle = Throttling<void>(duration: const Duration(milliseconds: 60));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        // 后面需要替换为滚动组件
        body: GetBuilder<ShopController>(builder: (controller) {
          if (controller.diamondShop.stoneBalance.isLowerThan(0)) {
            return Container();
          }
          Widget vipPartContent = !controller.diamondShop.isVip
              ? const Column(
                  children: [
                    SizedBox(
                      height: 37,
                    ),
                    // join vip
                    JoinVipCard(),
                  ],
                )
              : Container();
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(0),
                sliver: SliverToBoxAdapter(
                  child: Balance(balance: controller.diamondShop.stoneBalance),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(25, 31, 25, 0),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      // most popular
                      PopularCard(
                          promotion: controller.diamondShop.mostPopular),
                      vipPartContent,
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(25, 38, 25, 0),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final promotion =
                          controller.diamondShop.promotions[index];
                      return BuyStoneCard(promotion: promotion);
                    },
                    childCount: controller.diamondShop.promotions.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisExtent: BuyStoneCard.cardHeight,
                    mainAxisSpacing: 15,
                  ),
                ),
              ),
            ],
          );
        }));
  }

  AppBar buildAppBar() {
    var actionWidget = [
      isShowAction ? getActionContent() : Container(),
    ];
    return AppBar(
      elevation: 0,
      actions: actionWidget,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: btnBgLinearGradient,
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
        onPressed: () {},
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener); // 移除滚动监听器
    _scrollController.dispose();
    super.dispose();
  }

  Row getActionContent() {
    return Row(
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
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    throttle.throttle(() {
      double currentScrollOffset = _scrollController.offset;
      print('$currentScrollOffset');
      setState(() {
        isShowAction = currentScrollOffset >= showActionScrollHeight;
      });
    });
  }
}
