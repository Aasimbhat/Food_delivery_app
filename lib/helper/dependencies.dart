import 'package:food_delivery_app/controllers/popular_product_controller.dart';
import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/data/repositary/popula_product_repo.dart';
import 'package:get/get.dart';

Future<void> init()async{
  //api
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));
//repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controllers
    Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));


}