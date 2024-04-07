import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_study/pages/cart/cart.dart';
import 'package:flutter_study/pages/diamond/diamond.dart';
import 'package:flutter_study/pages/food_list/food_list.dart';
import 'package:flutter_study/pages/for_you/index.dart';
import 'package:flutter_study/pages/home/home.dart';
import 'package:flutter_study/pages/like/like.dart';
import 'package:flutter_study/pages/message/Message.dart';
import 'package:flutter_study/pages/obx_demo/OObx.dart';
import 'package:flutter_study/pages/obx_demo/OObx2.dart';
import 'package:flutter_study/store/cart/food_list_controller.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:get/get.dart';

import 'store/user/user_list_controller.dart';

BottomNavigationBarItem createItem(String title, Widget icon) {
  return BottomNavigationBarItem(
    icon: icon,
    label: title,
  );
}

class CartBottomWidget extends StatelessWidget {
  const CartBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodListController>(
      builder: (controller) {
        final cartItems = controller.cartFoodList;
        final counterText = cartItems.length.toString();
        final isShowBadge = cartItems.isNotEmpty;
        const iconWidget = Icon(Icons.cable);
        return isShowBadge
            ? getBadgesWidget(counterText: counterText, child: iconWidget)
            : iconWidget;
      },
    );
  }
}

class getBadgesWidget extends StatelessWidget {
  final String counterText;

  final Widget child;
  const getBadgesWidget(
      {super.key, required this.counterText, required this.child});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: const badges.BadgeStyle(
        badgeColor: Colors.blue,
        badgeGradient: badges.BadgeGradient.linear(
          colors: [
            Color.fromRGBO(255, 207, 157, 1.0),
            Color.fromRGBO(255, 161, 100, 1.0),
          ],
        ),
      ),
      position: badges.BadgePosition.topEnd(top: -14),
      badgeContent: Text(
        counterText,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
      child: child,
    );
  }
}

class MessageBottomWidget extends StatelessWidget {
  const MessageBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserListController>(builder: (controller) {
      const iconWidget = Icon(Icons.message);
      final counterText = controller.chatCount.toString();
      final isShowBadge = controller.chatList.isNotEmpty;
      final badgeIcon =
          getBadgesWidget(counterText: counterText, child: iconWidget);
      return isShowBadge ? badgeIcon : iconWidget;
    });
  }
}

class MyStackPage extends StatefulWidget {

  const MyStackPage({super.key});

  @override
  State<MyStackPage> createState() => _MyStackPageState();
}

class _MyStackPageState extends State<MyStackPage> {
  int _currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    LT.context = context;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          createItem("Home", const Icon(Icons.home)),
          createItem("Like", const Icon(Icons.favorite)),
          createItem("Chat", const MessageBottomWidget()),
          createItem("For You", const Icon(Icons.local_activity)),
          createItem("Product", const Icon(Icons.person)),
          createItem("Cart", const CartBottomWidget()),
          // createItem("TMP", const Icon(Icons.person)),
          // createItem("TMP", const Icon(Icons.person)),
          createItem("Diamond", const Icon(Icons.diamond)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Home(),
          Like(),
          Message(),
          ForYou(),
          FoodListWidget(),
          Cart(),
          // OObx(),
          // OObx2()
          Diamond()
        ],
      ),
    );
  }
}
