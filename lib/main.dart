import 'package:flutter/material.dart';
import 'package:food_delivery_app/controllers/popular_product_controller.dart';

import 'package:food_delivery_app/pages/food/popular_food_detial.dart';
import 'package:food_delivery_app/pages/food/recommended_food_detial.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      title: 'Food Delivery App',   
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home:  PopularFoodDetail(),
    );
  }
}

