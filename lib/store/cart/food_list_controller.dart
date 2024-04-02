import 'package:flutter_study/model/cart.dart';
import 'package:flutter_study/model/food.dart';
import 'package:flutter_study/service/api_server.dart';
import 'package:get/get.dart';

class FoodListController extends GetxController {
  final foodsList = <Food>[];
  final cartFoodList = <CartItem>[];

  void addFoodToCart(Food food, int count) {
    cartFoodList.add(CartItem(food: food, count: count));
    update();
  }

  void initFoodsData() async {
    var foods = await ApiService.getFoods();
    foodsList.addAll(foods);
  }

  @override
  void onInit() {
    super.onInit();
    initFoodsData();
  }

  void updateCartItemCount(CartItem cartItem, int count) {
    cartItem.updateCount(count);
    update();
  }
}
