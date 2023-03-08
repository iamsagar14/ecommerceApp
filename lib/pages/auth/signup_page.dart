import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/routes/route_helper.dart';
import 'package:flutter_ecommerce_app_food/utils/colors.dart';
import 'package:flutter_ecommerce_app_food/utils/dimensions.dart';
import 'package:flutter_ecommerce_app_food/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/app_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var singUpImage = [
      't.png',
      'f.webp',
      'g.png',
      'i.webp',
    ];
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
            AppTextField(
              textEditingController: nameController,
              hinText: 'Name',
              icon: Icons.person,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppTextField(
              textEditingController: phoneController,
              hinText: 'Phone',
              icon: Icons.phone,
            ),
            SizedBox(
              height: Dimensions.height20 + Dimensions.height20,
            ),
            GestureDetector(
              onTap: () {
                Get.offNamed(RouteHelper.getInitial());
              },
              child: Container(
                width: Dimensions.screenWidth / 2,
                height: Dimensions.screenHeight / 13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                    color: AppColors.mainColor),
                child: Center(
                  child: BigText(
                    text: "Sign UP",
                    size: Dimensions.font20 + Dimensions.font20 / 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.back(),
                    text: 'Have an account already',
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font20))),
            SizedBox(height: Dimensions.screenHeight * 0.02),
            RichText(
                text: TextSpan(
                    text: 'Sign up using one of the following methods',
                    style: TextStyle(
                        color: Colors.grey[500], fontSize: Dimensions.font20))),
            Wrap(
              children: List.generate(
                  4,
                  (index) => Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: Dimensions.radius30,
                          backgroundImage:
                              AssetImage('assets/images/' + singUpImage[index]),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
