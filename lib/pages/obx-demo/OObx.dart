import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter-obs.dart';

class OObx extends StatelessWidget {
  final controller = GetCounterRxLogic();
  OObx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: Obx(
          () => Text('${controller.count}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increase();
        },
      ),
    );
  }
}
