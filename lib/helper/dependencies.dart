import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app_food/controller/cart_controller.dart';
import 'package:flutter_ecommerce_app_food/controller/poplar_product_controller.dart';
import 'package:flutter_ecommerce_app_food/data/api/api_client.dart';
import 'package:flutter_ecommerce_app_food/data/repository/cart_repo.dart';
import 'package:flutter_ecommerce_app_food/data/repository/popular_product_repo.dart';
import 'package:flutter_ecommerce_app_food/utils/app_constant.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/recommended_product_controller.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  // repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
