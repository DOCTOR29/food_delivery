import 'dart:collection';

import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/controllers/recommeder_product_controller.dart';
import 'package:food_delivery/data/api/api_class.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/data/repository/recommended_product_repo.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';
Future<void> init() async{
    //api client
    Get.lazyPut(()=>ApiCleint( appBaseUrl: AppConstants.BASE_URL));
    //repos
    Get.lazyPut(() => PopularProductRepo(apliCleint: Get.find()));
    Get.lazyPut(() => RecommendedProductRepo(apliCleint: Get.find()));
    //controllers
    Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
    // value is _InternalLinkedHashMap <dynamic, dynamic>

    Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));

}