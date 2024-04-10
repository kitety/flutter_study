import 'package:flutter_study/store/cart/food_list_controller.dart';
import 'package:flutter_study/store/shop/shop.dart';
import 'package:flutter_study/store/user/user_list_controller.dart';
import 'package:get/get.dart';

class StoreBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(FoodListController());
    Get.put(UserListController());
    Get.put(ShopController());
  }
}
