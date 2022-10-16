

import 'package:food_delivery/data/api/api_class.dart';
import 'package:get/get.dart';

import '../../utils/app_constants.dart';

class RecommendedProductRepo extends GetxService{
  final ApiCleint apliCleint;
  RecommendedProductRepo({required this.apliCleint});




  Future<Response> getRecommendedProductList() async{
    return await apliCleint.getData(AppConstants.RECOMMENDED_PRODUCT_URI);

  }
}