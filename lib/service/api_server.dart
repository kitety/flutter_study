import 'package:flutter_study/common/food_constant.dart';
import 'package:flutter_study/model/user.dart';
import 'package:get/get.dart';

import '../model/food.dart';
import '../utils/local_helper.dart';
import '../utils/random_num.dart';

class ApiService {
  static Future<List<Rx<Food>>> getFoods() async {
    final foodList =
        foodNameList.map((e) => Food(count: 0, name: e).obs).toList();
    return foodList;
  }

  static Future<List<Rx<User>>> getUsers() async {
    return List.generate(
      30,
      (index) => User(
        generateRandomName(),
        genRandomNum(1.2, 3.0),
        generateRandomUserId(),
        [],
      ).obs,
    ).toList();
  }
}