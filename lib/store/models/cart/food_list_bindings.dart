import 'package:flutter_study/store/models/cart/food_list_controller.dart';
import 'package:get/get.dart';

class FoodListBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(FoodListController());
  }
}
