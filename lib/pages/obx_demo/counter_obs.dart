import 'package:get/get.dart';

class GetCounterRxLogic {
  var count = 0.obs;

  ///自增
  void increase() => ++count;
}
