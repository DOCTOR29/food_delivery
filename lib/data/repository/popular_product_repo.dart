import 'package:food_delivery/data/api/api_class.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiCleint apliCleint;
  PopularProductRepo({required this.apliCleint});




  Future<Response> getPopularProductList() async{
    return await apliCleint.getData("/api/v1/products/popular");

  }
}