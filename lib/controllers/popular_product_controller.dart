import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../Models/popular_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded=false;
  bool get isLoaded => _isLoaded;


  Future<void> getPopularListProduct() async {
    Response response = await popularProductRepo.getPopularProductList();

    if (response.statusCode == 200) {

      print("got Products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson((response.body)).products);
      _isLoaded = true;

      //  print(_popularProductList);

      update();
    } else {
      try {
        print("Error occurred and the error is " + response.body);
      } catch (e) {
        print("Error in the controller is " + e.toString());
      }
    }
  }
}
