import 'package:flutter/material.dart';
import 'package:flutter_study/components/counter_button/counter_button.dart';
import 'package:flutter_study/store/cart/food_list_controller.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('购物车'),
      ),
      body: CartContentWidget(),
    );
  }
}

class CartContentWidget extends StatelessWidget {
  final controller = Get.put(FoodListController());
  CartContentWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: controller,
      builder: (controller) {
        final cartFoodList =
            controller.foodsList.where((p0) => p0.value.isInCart).toList();
        return ListView.builder(
          padding: const EdgeInsets.all(4),
          itemCount: cartFoodList.length,
          itemBuilder: (BuildContext context, int index) {
            final food = cartFoodList[index];
            String name = food.value.name;
            return ListTile(
              title: Text(name),
              trailing: Obx(
                () => CounterButton(
                  min: 0,
                  max: 999,
                  value: food.value.count,
                  onChange: (newCount) {
                    food.update(
                      (val) {
                        val?.count = newCount;
                      },
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
