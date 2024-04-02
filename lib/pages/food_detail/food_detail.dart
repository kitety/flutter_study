import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/counter_button/counter_button.dart';
import '../../model/food.dart';
import '../../route/route.dart';
import '../../store/cart/food_list_controller.dart';
import '../../utils/random.dart';

class FoodDetail extends GetView<FoodListController> {
  final Food food = Get.arguments as Food;
  final count = 0.obs;
  FoodDetail({Key? key}) : super(key: key);

  GetBuilder AddToCartWidget() {
    return GetBuilder<FoodListController>(
      builder: (controller) {
        final foodIsInCart = controller.cartFoodList
            .any((element) => element.food.name == food.name);
        print(foodIsInCart);
        return IgnorePointer(
          ignoring: foodIsInCart,
          child: Opacity(
            opacity: foodIsInCart ? 0.5 : 1.0,
            child: ElevatedButton(
              onPressed: () {
                controller.addFoodToCart(food, count.value);
              },
              child: const Text('加入购物车'),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Detail'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                food.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          getFoodCountWidget(),
          AddToCartWidget(),
          ElevatedButton(
            onPressed: handleRandomFood,
            child: const Text('查看随机商品'),
          ),
        ],
      ),
    );
  }

  Obx getFoodCountWidget() {
    return Obx(
      () => CounterButton(
        min: 0,
        max: 999,
        value: count.value,
        onChange: (int newCount) {
          count.value = newCount;
        },
      ),
    );
  }

  void handleRandomFood() async {
    int newIndex = getRandomIndex(controller.foodsList.length - 1);
    bool isCurrent = controller.foodsList[newIndex].name == food.name;
    while (isCurrent) {
      newIndex = getRandomIndex(controller.foodsList.length - 1);
      isCurrent = controller.foodsList[newIndex].name == food.name;
    }
    Get.offAndToNamed(
      RouteBaseConfig.detail,
      arguments: controller.foodsList[newIndex],
    );
  }
}
