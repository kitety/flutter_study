import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_study/l10n/application_localizations_delegate.dart';
import 'package:flutter_study/pages/home/home.dart';
import 'package:flutter_study/pages/like/like.dart';
import 'package:flutter_study/pages/message/Message.dart';
import 'package:flutter_study/pages/more/more.dart';
import 'package:flutter_study/pages/my/my.dart';
import 'package:flutter_study/utils/localization_transition.dart';

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
          createItem("message", const Icon(Icons.message)),
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
}
