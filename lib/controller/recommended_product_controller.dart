import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/data/repository/popular_product_repo.dart';
import 'package:flutter_ecommerce_app_food/models/product_model.dart';
import 'package:flutter_ecommerce_app_food/utils/colors.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  int _quantity = 0;
  int get quantity => _quantity;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print('got product');
      _recommendedProductList = [];
      _recommendedProductList
          .addAll(Product.fromJson(response.body).result!.products!.toList());
      _isLoaded = true;
      update();
    } else {}
  }

  void setQuantity(bool isINcrement) {
    if (isINcrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar('Item Count', "you Can't reduce more ",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if (quantity > 0) {
      Get.snackbar('Item Count', "you Can't increase  more ",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }
}
