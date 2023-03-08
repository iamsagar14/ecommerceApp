import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/utils/colors.dart';
import 'package:flutter_ecommerce_app_food/utils/dimensions.dart';
import 'package:flutter_ecommerce_app_food/widgets/app_icon.dart';

import '../../widgets/account_widgets.dart';
import '../../widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Center(
          child: BigText(
            text: "Profile",
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              size: Dimensions.height10 * 15,
              iconSize: Dimensions.height30 + Dimensions.height45,
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AccountWidgets(
                      appIcon: AppIcon(
                          icon: Icons.person,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white,
                          size: Dimensions.height10 * 5,
                          iconSize: Dimensions.height10 * 5 / 2),
                      bigText: BigText(
                        text: 'Sagar',
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    AccountWidgets(
                      appIcon: AppIcon(
                          icon: Icons.phone,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          size: Dimensions.height10 * 5,
                          iconSize: Dimensions.height10 * 5 / 2),
                      bigText: BigText(
                        text: '9808504687',
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    AccountWidgets(
                      appIcon: AppIcon(
                          icon: Icons.email_outlined,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          size: Dimensions.height10 * 5,
                          iconSize: Dimensions.height10 * 5 / 2),
                      bigText: BigText(
                        text: 'Sagararyal@48@gmail.com',
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    AccountWidgets(
                      appIcon: AppIcon(
                          icon: Icons.location_on,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          size: Dimensions.height10 * 5,
                          iconSize: Dimensions.height10 * 5 / 2),
                      bigText: BigText(
                        text: 'Fill in your Address',
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    AccountWidgets(
                      appIcon: AppIcon(
                          icon: Icons.message,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          size: Dimensions.height10 * 5,
                          iconSize: Dimensions.height10 * 5 / 2),
                      bigText: BigText(
                        text: 'Please eneter messages',
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    AccountWidgets(
                      appIcon: AppIcon(
                          icon: Icons.facebook,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          size: Dimensions.height10 * 5,
                          iconSize: Dimensions.height10 * 5 / 2),
                      bigText: BigText(
                        text: 'facebook Id',
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
