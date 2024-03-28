import 'package:flutter/material.dart';
import 'package:flutter_study/store/models/cart/food_list_controller.dart';
import 'package:get/get.dart';

import '../../components/counter_button/counter_button.dart';
import '../../utils/random.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  final FoodListController controller = Get.put(FoodListController());
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final food = controller.foodsList[index];

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
                food.value.name,
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
          Obx(
            () => CounterButton(
              min: 0,
              max: 999,
              value: food.value.count,
              onChange: (int newCount) {
                food.update((val) {
                  val?.count = newCount;
                });
              },
            ),
          ),
          Obx(
            () => IgnorePointer(
              ignoring: food.value.isInCart,
              child: Opacity(
                opacity: food.value.isInCart ? 0.5 : 1.0,
                child: ElevatedButton(
                  onPressed: () {
                    food.update((val) {
                      val?.isInCart = true;
                    });
                    controller.update();
                  },
                  child: const Text('加入购物车'),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              int newIndex = getRandomIndex(controller.foodsList.length - 1);
              while (newIndex == index) {
                newIndex = getRandomIndex(controller.foodsList.length - 1);
              }
              setState(() {
                index = newIndex;
              });
            },
            child: const Text('查看随机商品'),
          ),
        ],
      ),
    );
  }

  void handleValueChange(int val) {
    print('object');
    print(val);
    // num = val;
  }

  @override
  void initState() {
    super.initState();
    // 获取 Get.arguments 的值并更新 index 的状态
    int newIndex = Get.arguments as int;
    setState(() {
      index = newIndex;
    });
  }
}
