import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_obs.dart';

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
          () => Column(
            children: [
              Text('${controller.count}111'),
              Obx(
                () => Text('${controller.count}'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "btn1",
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increase();
        },
      ),
    );
  }
}
