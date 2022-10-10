import 'package:get/get.dart';

class ApiCleint extends GetConnect implements GetxService {
  late String token;
  late final String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ApiCleint({required dynamic appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token='';
    allowAutoSignedCert = true;
    _mainHeaders = {
      'conente-type': 'application/json; charset=UTF-8',
      'Authorisation': 'beared $token',
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
