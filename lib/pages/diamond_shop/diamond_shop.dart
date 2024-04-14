import 'package:flutter/material.dart';
import 'package:flutter_study/common/constant.dart';
import 'package:flutter_study/pages/diamond_shop/common/btn_gradient.dart';
import 'package:flutter_study/pages/diamond_shop/widgets/balance.dart';
import 'package:flutter_study/pages/diamond_shop/widgets/buy_stone_card.dart';
import 'package:flutter_study/pages/diamond_shop/widgets/join_vip_card.dart';
import 'package:flutter_study/pages/diamond_shop/widgets/popular_card.dart';
import 'package:flutter_study/store/diamond_shop/diamond_shop.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:get/get.dart';
import 'package:throttling/throttling.dart';

class DiamondShopPage extends StatefulWidget {
  const DiamondShopPage({Key? key}) : super(key: key);

  @override
  State<DiamondShopPage> createState() => _DiamondShopPageState();
}

class _DiamondShopPageState extends State<DiamondShopPage> {
  bool isShowAction = false;
  final ScrollController _scrollController = ScrollController();
  final throttle = Throttling<void>(duration: const Duration(milliseconds: 60));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        // 后面需要替换为滚动组件
        body: GetBuilder<DiamondShopController>(builder: (controller) {
          if (controller.isLoading) {
            return Container();
          }
          Widget vipPartContent = controller.diamondShop?.isVip ?? false
              ? Container()
              : const Column(
                  children: [
                    SizedBox(
                      height: 37,
                    ),
                    // join vip
                    JoinVipCardWidget(),
                  ],
                );
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              // 顶部余额
              SliverPadding(
                padding: const EdgeInsets.all(0),
                sliver: SliverToBoxAdapter(
                  child: BalanceWidget(
                    balance: controller.diamondShop?.stoneBalance ?? 0,
                  ),
                ),
              ),
              // 最受欢迎的
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(25, 31, 25, 0),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      // most popular
                      PopularCard(
                        promotion: controller.diamondShop!.mostPopular,
                      ),
                      vipPartContent,
                    ],
                  ),
                ),
              ),
              // 下面的两列卡片
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(25, 38, 25, 40),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final promotion =
                          controller.diamondShop!.promotions[index];
                      return BuyStoneCardWidget(promotion: promotion);
                    },
                    childCount: controller.diamondShop!.promotions.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisExtent: BuyStoneCardWidget.cardHeight,
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
        LT.t?.Purchase_DiamondShopNavBar_AppBarTitle ?? '',
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

  Widget getActionContent() {
    return GetBuilder<DiamondShopController>(builder: (controller) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${controller.diamondShop?.stoneBalance}',
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
    });
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
        isShowAction = currentScrollOffset >= BalanceWidget.containerHeight;
      });
    });
  }
}
