import 'dart:math';

int getRandomIndex(int max, [int min = 0]) {
  final random = Random();
  return min + random.nextInt(max - min + 1);
}
