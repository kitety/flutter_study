import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class OObx2 extends StatelessWidget {
  final GetCounterEasyLogic logic = Get.put(GetCounterEasyLogic());
  OObx2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: GetBuilder<GetCounterEasyLogic>(builder: (logic) {
          return Text(
            '点击了 ${logic.count} 次',
            style: const TextStyle(fontSize: 30.0),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "btn2",
        onPressed: () => logic.increase(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
