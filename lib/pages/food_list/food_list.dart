import 'package:flutter/material.dart';
import 'package:flutter_study/route/route.dart';
import 'package:flutter_study/store/cart/food_list_controller.dart';
import 'package:get/get.dart';

class FoodListContent extends GetView<FoodListController> {
  const FoodListContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final foodList = controller.foodsList;
    return ListView.builder(
      padding: const EdgeInsets.all(4),
      itemCount: controller.foodsList.length,
      itemBuilder: (BuildContext context, int index) {
        final food = foodList[index];
        String name = food.value.name;
        return ListTile(
          title: Text(name),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Get.toNamed(RouteBaseConfig.detail, arguments: index);
            },
          ),
        );
      },
    );
  }
}

class FoodListWidget extends StatelessWidget {
  const FoodListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food List'),
      ),
      body: const FoodListContent(),
    );
  }
}
