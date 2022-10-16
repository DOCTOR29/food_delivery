
import 'package:get/get.dart';

import '../../Models/popular_model.dart';
import '../data/repository/recommended_product_repo.dart';


class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;

  RecommendedProductController({required this.recommendedProductRepo});

  List<dynamic> _recommendedProductList = [];

  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded=false;
  bool get isLoaded => _isLoaded;


  Future<void> getRecommnededProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();

    if (response.statusCode == 200) {

      print("got Products recommneded");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson((response.body)).products);
      _isLoaded = true;

      //  print(_popularProductList);

      update();
    } else {
      print("could not get Products recommneded");
      try {
        print("Error occurred and the error is " + response.body);
      } catch (e) {
        print("Error in the controller is " + e.toString());
      }
    }
  }
}