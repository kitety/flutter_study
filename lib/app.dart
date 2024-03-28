import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_study/l10n/application_localizations_delegate.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/pages/cart/cart.dart';
import 'package:flutter_study/pages/food_detail/food_detail.dart';
import 'package:flutter_study/pages/food_list/food_list.dart';
import 'package:flutter_study/pages/for_you/index.dart';
import 'package:flutter_study/pages/home/home.dart';
import 'package:flutter_study/pages/like/like.dart';
import 'package:flutter_study/pages/message/Message.dart';
import 'package:flutter_study/route/route.dart';
import 'package:flutter_study/store/models/cart/food_list_bindings.dart';
import 'package:flutter_study/utils/local_helper.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:flutter_study/utils/random_num.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'store/models/message_global.dart';

BottomNavigationBarItem createItem(String title, Widget icon) {
  return BottomNavigationBarItem(
    icon: icon,
    label: title,
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        ApplicationLocalizationsDelegate()
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
      ],
      initialBinding: FoodListBindings(),
      initialRoute: RouteBaseConfig.home,
      getPages: [
        GetPage(name: RouteBaseConfig.home, page: () => const MyStackPage()),
        GetPage(name: RouteBaseConfig.detail, page: () => const FoodDetail()),
      ],
    );
  }
}

class MessageBottomWidget extends StatelessWidget {
  const MessageBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppGlobalModelView>(
      builder: (context, counterViewModel, child) {
        final counterText = counterViewModel.chatCount.toString();
        final isShowBadge = counterViewModel.chatList.isNotEmpty;
        final badgeIcon = badges.Badge(
          badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.blue,
              badgeGradient: badges.BadgeGradient.linear(
                colors: [
                  Color.fromRGBO(255, 207, 157, 1.0),
                  Color.fromRGBO(255, 161, 100, 1.0),
                ],
              )),
          position: badges.BadgePosition.topEnd(top: -14),
          badgeContent: Text(
            counterText,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
          child: child,
        );
        return isShowBadge ? badgeIcon : child!;
      },
      child: const Icon(Icons.message),
    );
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
          createItem("My", const Icon(Icons.person)),
          createItem("Cart", const Icon(Icons.cable)),
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
          Cart()
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 500), initStoreData);
  }

  void initStoreData() {
    List.generate(30, (index) {
      final user = User(generateRandomName(), genRandomNum(1.2, 3.0),
          generateRandomUserId(), []);
      Provider.of<AppGlobalModelView>(context, listen: false).addUser(user);
    });
  }
}
