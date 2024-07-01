
import 'package:fluttersample/model/user/user_response.dart';
import 'package:fluttersample/respository/user_respository.dart';
import 'package:fluttersample/viewmodel/base_view_model.dart';

class UserViewModel extends BaseViewModel {

  UserResponse? user;

  Future<void> getProfile() async {
    final response = await UserRepository().getProfile();

    if (response.data is UserResponse) {
      user = response.data as UserResponse;
    }

    checkError(response);

    notifyListeners();
  }
}