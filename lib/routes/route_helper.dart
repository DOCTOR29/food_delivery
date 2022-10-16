import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFood = '/Popular-Food';
  static const String recommendedFood = '/recommended-Food';

  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId) => '$recommendedFood?pageId=$pageId';
  static String getInitial()=>'$initial';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () {
        return MainFoodPage();
      },
    ),
    GetPage(
      name: popularFood,
      page: () {
        var pageId=Get.parameters['pageId'];
        return PopularFoodDetail(pageId:int.parse(pageId!));

      },
      transition: Transition.circularReveal,
    ),
    GetPage(name: recommendedFood, page: (){
      var pageId=Get.parameters['pageId'];
      return RecommendedFoodDetail( pageId:int.parse(pageId!));


    })
  ];
}
