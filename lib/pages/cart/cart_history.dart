import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/utils/colors.dart';
import 'package:flutter_ecommerce_app_food/utils/dimensions.dart';
import 'package:flutter_ecommerce_app_food/widgets/app_icon.dart';
import 'package:flutter_ecommerce_app_food/widgets/big_text.dart';
import 'package:flutter_ecommerce_app_food/widgets/small_text.dart';

class CartHistory extends StatelessWidget {
  const CartHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.height10 * 10,
            width: double.maxFinite,
            color: AppColors.mainColor,
            padding: EdgeInsets.only(top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BigText(text: 'Cart History'),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  iconColor: AppColors.mainColor,
                  backgroundColor: AppColors.yellowColor,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    children: [
                      for (int i = 0; i < 6; i++)
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(text: '05/02/2022 12:12 PM'),
                              SizedBox(
                                height: Dimensions.height10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Wrap(
                                    direction: Axis.horizontal,
                                    children: List.generate(3, (index) {
                                      return Container(
                                        height: Dimensions.height10 * 8,
                                        width: Dimensions.width10 * 8,
                                        margin: EdgeInsets.only(
                                            right: Dimensions.width10 / 2),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.radius15),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/food_image.jpg'))),
                                      );
                                    }),
                                  ),
                                  Container(
                                    height: Dimensions.height10 * 12,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SmallText(
                                          text: 'Total ',
                                          color: AppColors.titleColor,
                                        ),
                                        BigText(
                                          text: '3 Items',
                                          color: AppColors.titleColor,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions.width10,
                                              vertical:
                                                  Dimensions.height10 / 2),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Dimensions.radius15 / 2,
                                              ),
                                              border: Border.all(
                                                  width: 1,
                                                  color: AppColors.mainColor)),
                                          child: SmallText(
                                            text: 'One More',
                                            color: AppColors.mainColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(bottom: Dimensions.height20),
                        )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
