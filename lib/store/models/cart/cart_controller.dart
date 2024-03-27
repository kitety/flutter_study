import 'package:flutter_study/model/food.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final items = <Food>[].obs;

  void add(Food item) {
    items.add(item);
  }
}
