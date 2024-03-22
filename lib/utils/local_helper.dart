import 'dart:math';

import 'package:uuid/uuid.dart';

String generateRandomName() {
  final random = Random();
  final length = random.nextInt(8) + 5; // 5到12之间的随机数
  const letters = 'abcdefghijklmnopqrstuvwxyz';
  String result = '';
  for (int i = 0; i < length; i++) {
    result += letters[random.nextInt(letters.length)];
  }
  return result;
}

String generateRandomUserId() {
  var uuid = const Uuid();
  return uuid.v4();
}
