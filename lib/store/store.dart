import 'package:flutter/material.dart';
import 'package:flutter_study/store/models/message_global.dart';
import 'package:provider/provider.dart';

class StoreWidget extends StatelessWidget {
  final Widget child;
  const StoreWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => AppGlobalModelView(),
      child: child,
    );
  }
}
