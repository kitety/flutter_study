import 'package:flutter/material.dart';

import '../../components/counter_button/counter_button.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Food Detail'),
        ),
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('薯片')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('薯片')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('薯片')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('薯片')],
          ),
          CounterButton()
        ],
      ),
    );
  }
}
