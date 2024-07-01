import 'package:fluttersample/model/common/result_model/result_model.dart';
import 'package:fluttersample/model/user/user_response.dart';
import 'package:fluttersample/network/my_response.dart';
import 'package:fluttersample/service/user_services.dart';

class UserRepository {
  Userservices get _userServices => Userservices();

  Future<MyResponse> getProfile() async {
    final response = await _userServices.getProfile();

    if (response.data is Map<String, dynamic> && response.error == null) {

      final result = ResultModel.fromJson(
        response.data as Map<String, dynamic>,
            (object) => UserResponse.fromJson(response.data),
      ).result;

      return MyResponse.complete(result);
    }

    return response;
  }
}