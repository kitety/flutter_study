import 'dart:math';

int clampIntNum(int current, int minValue, int maxValue) {
  return max(minValue, min(maxValue, current));
}
