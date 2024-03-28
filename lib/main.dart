import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'index_stack.dart';
import 'l10n/application_localizations_delegate.dart';
import 'pages/food_detail/food_detail.dart';
import 'route/route.dart';
import 'store/store_binding.dart';

void main() => runApp(const App());

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
      initialBinding: StoreBindings(),
      initialRoute: RouteBaseConfig.home,
      getPages: [
        GetPage(name: RouteBaseConfig.home, page: () => const MyStackPage()),
        GetPage(name: RouteBaseConfig.detail, page: () => const FoodDetail()),
      ],
    );
  }
}
