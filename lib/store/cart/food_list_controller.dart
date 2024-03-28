import 'package:flutter_study/model/food.dart';
import 'package:flutter_study/service/api_server.dart';
import 'package:get/get.dart';

class FoodListController extends GetxController {
  final foodsList = <Rx<Food>>[].obs;

  void initFoodsData() async {
    var foods = await ApiService.getFoods();
    foodsList.addAll(foods);
  }

  @override
  void onInit() {
    super.onInit();
    initFoodsData();
  }
}
