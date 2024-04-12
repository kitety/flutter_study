import 'package:flutter_study/common/food_constant.dart';
import 'package:flutter_study/model/shop.dart';
import 'package:flutter_study/model/user.dart';

import '../model/food.dart';
import '../utils/local_helper.dart';
import '../utils/random_num.dart';

class ApiService {
  static DiamondShop getDiamondShopData() {
    const fakeAjaxRes =
        '{"isVip":false,"stoneBalance":52678,"mostPopular":{"count":150,"increaseCount":30,"money":10.56,"isShowTip":true,"tipText":"Most popular","type":""},"promotions":[{"count":123,"increaseCount":20,"money":13.56,"isShowTip":true,"tipText":"Best Value","type":"single"},{"count":500,"increaseCount":88,"money":43.56,"isBestValue":false,"isShowTip":false,"tipText":"","type":"two"},{"count":1000,"increaseCount":200,"money":83.56,"isBestValue":false,"isShowTip":false,"tipText":"","type":"box"}]}';
    return diamondShopFromJson(fakeAjaxRes);
  }

  static Future<List<Food>> getFoods() async {
    final foodList = foodNameList.map((name) => Food(name: name)).toList();
    return foodList;
  }

  static Future<List<User>> getUsers() async {
    return List.generate(
      30,
      (index) => User(
        generateRandomName(),
        genRandomNum(1.2, 3.0),
        generateRandomUserId(),
        [],
      ),
    ).toList();
  }
}
