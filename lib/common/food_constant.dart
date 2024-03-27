import 'package:flutter_study/model/food.dart';

const foodNameList = ['薯片', '牛奶', '可乐', '方便面', '果冻'];
final foodList = foodNameList.map((e) => Food(count: 0, name: e)).toList();
