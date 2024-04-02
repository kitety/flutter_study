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
      body: const CartContentWidget(),
    );
  }
}

class CartContentWidget extends StatelessWidget {
  const CartContentWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FoodListController>(
      builder: (controller) {
        final cartFoodList = controller.cartFoodList;
        if (cartFoodList.isEmpty) {
          return Container();
        }
        return ListView.builder(
          padding: const EdgeInsets.all(4),
          itemCount: cartFoodList.length,
          itemBuilder: (BuildContext context, int index) {
            final cartItem = cartFoodList[index];
            String name = cartItem.food.name;
            return ListTile(
              title: Text(name),
              trailing: CounterButton(
                min: 0,
                max: 999,
                value: cartItem.count,
                onChange: (newCount) {
                  controller.updateCartItemCount(cartItem, newCount);
                },
              ),
            );
          },
        );
      },
    );
  }
}
