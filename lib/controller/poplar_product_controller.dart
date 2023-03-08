import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/controller/cart_controller.dart';
import 'package:flutter_ecommerce_app_food/data/repository/popular_product_repo.dart';
import 'package:flutter_ecommerce_app_food/models/product_model.dart';
import 'package:flutter_ecommerce_app_food/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print('got product');
      _popularProductList = [];
      _popularProductList
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
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar('Item Count', "you Can't reduce more ",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      if (_inCartItems > 0) {
        _quantity = -_inCartItems;
        return _quantity;
      }
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar('Item Count', "you Can't increase  more ",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);
    if (exist) {
      _inCartItems = _cart.getQuantity(product);
    }
    //if exist get the item from storage
  }

  void addItem(ProductModel product) {
    // if (_quantity > 0) {
    _cart.addItems(product, _quantity);
    _quantity = 0;
    _inCartItems = _cart.getQuantity(product);
    // } else {
    // ;
    // }
    update();
  }

  int get totalItems {
    return _cart.totalItems;
  }
}
