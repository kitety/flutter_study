import 'dart:math';

double genRandomNum(dynamic min, dynamic max) {
  Random random = Random();
  double minValue = min is int ? min.toDouble() : min;
  double maxValue = max is int ? max.toDouble() : max;
  return minValue + random.nextDouble() * (maxValue - minValue);
}
