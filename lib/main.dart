import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_food/controller/poplar_product_controller.dart';
import 'package:flutter_ecommerce_app_food/pages/auth/sign_in_page.dart';
import 'package:flutter_ecommerce_app_food/pages/auth/signup_page.dart';
import 'package:flutter_ecommerce_app_food/pages/cart/cart_page.dart';
import 'package:flutter_ecommerce_app_food/pages/home/food_page_body.dart';
import 'package:flutter_ecommerce_app_food/pages/home/main_food_page.dart';
import 'package:flutter_ecommerce_app_food/pages/splash/splash_page.dart';
import 'package:flutter_ecommerce_app_food/routes/route_helper.dart';
import 'package:get/get.dart';
import 'controller/recommended_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SignInPage(),
      // home: MainFoodPage(),
      initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.routes,
    );
  }
}
