import 'package:flutter/material.dart';
import 'package:flutter_study/common/food_constant.dart';
import 'package:flutter_study/route/route.dart';
import 'package:get/get.dart';

class foodListWidget extends StatelessWidget {
  const foodListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(4),
      itemCount: foodList.length,
      itemBuilder: (BuildContext context, int index) {
        String name = foodList[index].name;
        return ListTile(
          title: Text(name),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Get.toNamed(RouteBaseConfig.detail);
            },
          ),
        );
      },
    );
  }
}

class My extends StatefulWidget {
  const My({Key? key}) : super(key: key);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const foodListWidget(),
    );
  }
}
