import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/data/repository/cart_repo.dart';
import 'package:flutter_ecommerce_app_food/models/product_model.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';
import '../utils/colors.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};
  Map<int, CartModel> get items => _items;
  void addItems(ProductModel product, int quantity) {
    var totalQuantity = 0;
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id!,
        (value) {
          totalQuantity = value.quantity! + quantity;
          return CartModel(
            id: value.id,
            name: value.name,
            price: value.price,
            image: value.image,
            quantity: value.quantity! + quantity,
            isExist: true,
            time: DateTime.now().toString(),
          );
        },
      );
      if (totalQuantity <= 0) {
        _items.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(
          product.id!,
          () => CartModel(
            id: product.id,
            name: product.name,
            price: product.price,
            image: product.image,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),
          ),
        );
      } else {
        Get.snackbar('Item Count', "you should atleast add item in the cart  ",
            backgroundColor: AppColors.mainColor, colorText: Colors.white);
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItems {
    var totalQuantity = 0;
    _items.forEach((key, value) {
      totalQuantity += value.quantity!;
    });
    return totalQuantity;
  }
}
