import 'dart:collection';

import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/api/api_class.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
Future<void> init() async{
    //api client
    Get.lazyPut(()=>ApiCleint( appBaseUrl: 'https://mvs.bslmeiyu.com'));
    //repos
    Get.lazyPut(() => PopularProductRepo(apliCleint: Get.find()));
    //controllers
    Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
    // value is _InternalLinkedHashMap <dynamic, dynamic>

}