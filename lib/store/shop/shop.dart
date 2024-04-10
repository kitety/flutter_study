import 'package:flutter_study/model/shop.dart';
import 'package:flutter_study/service/api_server.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  late DiamondShop diamondShop;
  void initDiamondShopData() {
    diamondShop = ApiService.getDiamondShopData();
  }

  @override
  void onInit() {
    super.onInit();
    initDiamondShopData();
  }
}
