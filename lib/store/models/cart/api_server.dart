import 'package:flutter_study/common/food_constant.dart';
import 'package:get/get.dart';

import '../../../model/food.dart';

class ApiService {
  static Future<List<Rx<Food>>> getFoods() async {
    final foodList=foodNameList.map((e) => Food(count: 0,name: e).obs).toList();
    return foodList;
  }
}
