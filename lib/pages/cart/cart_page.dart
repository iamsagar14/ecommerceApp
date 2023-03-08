import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/utils/dimensions.dart';
import 'package:flutter_ecommerce_app_food/widgets/app_icon.dart';
import 'package:flutter_ecommerce_app_food/widgets/big_text.dart';
import 'package:flutter_ecommerce_app_food/widgets/small_text.dart';

import '../../routes/route_helper.dart';
import '../../utils/colors.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimensions.height20 * 3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.popularFood);
                    },
                    child: AppIcon(
                      icon: Icons.arrow_back_ios,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      iconSize: Dimensions.iconSize24,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width20 * 5,
                  ),
                  AppIcon(
                    icon: Icons.home,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24,
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_outlined,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24,
                  ),
                ],
              )),
          Positioned(
              top: Dimensions.height20 * 5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height20),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(itemBuilder: (_, index) {
                    return Container(
                      width: double.maxFinite,
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            width: Dimensions.height20 * 5,
                            height: Dimensions.height20 * 5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/food_image.jpg')),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          Expanded(
                              child: Container(
                            height: Dimensions.height20 * 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                BigText(
                                  text: 'Good food with good Taste',
                                  color: Colors.black54,
                                ),
                                SmallText(text: 'spicy'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BigText(
                                      text: '\$33.0',
                                      color: Colors.redAccent,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: Dimensions.height10,
                                          bottom: Dimensions.height10,
                                          left: Dimensions.width10,
                                          right: Dimensions.width10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radius20)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.remove,
                                            color: AppColors.signColor,
                                          ),
                                          SizedBox(
                                            width: Dimensions.width10 / 2,
                                          ),
                                          BigText(text: '0'),
                                          SizedBox(
                                            width: Dimensions.width10 / 2,
                                          ),
                                          Icon(
                                            Icons.add,
                                            color: AppColors.signColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    );
                  }),
                ),
              ))
        ],
      ),
    );
  }
}
