import 'package:fluttersample/service/base_services.dart';

import '../constants/constants.dart';
import '../network/my_response.dart';

class Userservices extends BaseServices {


  // String get userBaseUrl => '$apiUrl';
  //TODO
  // String get userBaseUrl => 'https://reqres.in/api';

  Future<MyResponse> getProfile() async {
    String path = '$userBaseUrl/unknown';
    print('jack jack url $path');
    return callAPI(HttpRequestType.get, path);
  }
}