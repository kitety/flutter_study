import 'package:flutter_study/model/shop.dart';
import 'package:flutter_study/service/api_server.dart';
import 'package:get/get.dart';

class DiamondShopController extends GetxController {
  bool isSuccess = false;
  bool isFailed = false;
  bool isLoading = true;
  DiamondShop? diamondShop;
  void initDiamondShopData() async {
    try {
      diamondShop = await ApiService.getDiamondShopData();
      // print(diamondShop);
      isSuccess = true;
      isFailed = false;
      isLoading = false;
      update();
    } catch (e) {
      isSuccess = false;
      isFailed = true;
      isLoading = false;
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    initDiamondShopData();
  }
}
