import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_study/l10n/application_localizations_delegate.dart';
import 'package:flutter_study/utils/localization_transition.dart';
import 'package:flutter_study/widgets/bottomNav.dart';
import 'package:flutter_study/widgets/homeScrollContent.dart';

void main() {
  runApp(const MaterialApp(
    home: ScrollableLayout(),
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
  ));
}

class ScrollableLayout extends StatelessWidget {
  const ScrollableLayout({super.key});

  @override
  Widget build(BuildContext context) {
    LT.context = context;
    var appBar = buildAppBar(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: const HomeScrollContent(),
      bottomNavigationBar: const BottomNav(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    final searchTabTitle = LT.t?.searchTabTitle ?? '';
    return AppBar(
      titleSpacing: 10,
      title: Text(
        searchTabTitle,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 100, 107)),
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
