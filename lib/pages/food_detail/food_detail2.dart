import 'package:flutter/material.dart';
import 'package:flutter_study/model/food.dart';
import 'package:flutter_study/store/cart/food_list_controller.dart';
import 'package:get/get.dart';

import '../../components/counter_button/counter_button.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  final count = 0;
  final FoodListController foodListController = Get.put(FoodListController());
  Food food = Get.arguments as Food;

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
          CounterButton(
            min: 0,
            max: 999,
            value: count,
            onChange: (int newCount) {
              setState(() {
                // count = newCount;
              });
            },
          ),
          // Obx(
          //   () => IgnorePointer(
          //     ignoring: food.value.isInCart,
          //     child: Opacity(
          //       opacity: food.value.isInCart ? 0.5 : 1.0,
          //       child: ElevatedButton(
          //         onPressed: () {
          //           food.update((val) {
          //             val!.isInCart = true;
          //           });
          //           // 刷新购物车
          //           foodListController.update();
          //         },
          //         child: const Text('加入购物车'),
          //       ),
          //     ),
          //   ),
          // ),
          ElevatedButton(
            onPressed: handleRandomFood,
            child: const Text('查看随机商品'),
          ),
        ],
      ),
    );
  }

  void handleRandomFood() {
    // int newIndex = getRandomIndex(foodListController.foodsList.length - 1);
    // while (newIndex == index) {
    //   newIndex = getRandomIndex(foodListController.foodsList.length - 1);
    // }
    // setState(() {
    //   index = newIndex;
    // });
  }
}
