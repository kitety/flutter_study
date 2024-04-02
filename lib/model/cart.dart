import 'food.dart';

class CartItem {
  Food food;
  int count;

  CartItem({required this.food, required this.count});

  void updateCount(int val) {
    count = val;
  }
}
