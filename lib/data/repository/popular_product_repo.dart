import 'package:food_delivery/data/api/api_class.dart';
import 'package:get/get.dart';

import '../../utils/app_constants.dart';

class PopularProductRepo extends GetxService{
  final ApiCleint apliCleint;
  PopularProductRepo({required this.apliCleint});




  Future<Response> getPopularProductList() async{
    return await apliCleint.getData(AppConstants.POPULAR_PRODUCT_URI);

  }
}