import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_study/l10n/application_localizations_delegate.dart';
import 'package:flutter_study/model/user_model.dart';
import 'package:flutter_study/pages/home/home.dart';
import 'package:flutter_study/pages/like/like.dart';
import 'package:flutter_study/pages/message/Message.dart';
import 'package:flutter_study/pages/more/more.dart';
import 'package:flutter_study/pages/my/my.dart';
import 'package:flutter_study/utils/local_helper.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:flutter_study/utils/random_num.dart';
import 'package:provider/provider.dart';

import 'store/models/app_global.dart';

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
    return const MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        ApplicationLocalizationsDelegate()
      ],
      supportedLocales: [
        Locale('en'),
        Locale('de'),
      ],
      home: MyStackPage(),
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
        print('counterViewModel.users.length');
        print(counterViewModel.users.length);
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
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    LT.context = context;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          createItem("home", const Icon(Icons.home)),
          createItem("like", const Icon(Icons.favorite)),
          createItem("Chat", const MessageBottomWidget()),
          createItem("more", const Icon(Icons.more)),
          createItem("my", const Icon(Icons.person)),
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
        children: const [Home(), Like(), Message(), More(), My()],
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
      final user = User(
          generateRandomName(), genRandomNum(1.2, 3.0), generateRandomUserId());
      print(user);
      Provider.of<AppGlobalModelView>(context, listen: false).addUser(user);
    });
  }
}
