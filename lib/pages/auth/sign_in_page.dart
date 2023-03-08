import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/pages/auth/signup_page.dart';
import 'package:flutter_ecommerce_app_food/utils/colors.dart';
import 'package:flutter_ecommerce_app_food/utils/dimensions.dart';
import 'package:flutter_ecommerce_app_food/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/app_textfield.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.screenHeight * 0.04,
            ),
            Container(
              height: Dimensions.screenHeight * 0.25,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage(
                      'assets/images/restaurant-food-quality-badge-image-vector-file-representing-logo-plate-fork-knife-spoon-33714973.jpg'),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: Dimensions.width20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                        fontSize: Dimensions.font20 * 3 + Dimensions.font20 / 2,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'SignIn to your account',
                    style: TextStyle(
                      fontSize: Dimensions.font20,
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            AppTextField(
              textEditingController: emailController,
              hinText: 'Email',
              icon: Icons.email_outlined,
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            AppTextField(
              textEditingController: passwordController,
              hinText: 'password',
              icon: Icons.password_sharp,
              isObscure: true,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                RichText(
                  text: TextSpan(
                    text: 'Sign into your account ',
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font20),
                  ),
                ),
                SizedBox(
                  width: Dimensions.width20,
                ),
              ],
            ),
            SizedBox(height: Dimensions.screenHeight * 0.05),
            Container(
              width: Dimensions.screenWidth / 2,
              height: Dimensions.screenHeight / 13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.mainColor),
              child: Center(
                child: BigText(
                  text: "Sign In",
                  size: Dimensions.font20 + Dimensions.font20 / 2,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            SizedBox(height: Dimensions.screenHeight * 0.02),
            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account ?',
                  style: TextStyle(
                      color: Colors.grey[500], fontSize: Dimensions.font20),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => SignUpPage(),
                            transition: Transition.fadeIn),
                      text: ' Create',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainBlackColor,
                          fontSize: Dimensions.font20),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
