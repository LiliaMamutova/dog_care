import 'package:dog_care/config/app_url.dart';

import '../shared/data/network/network_services_api.dart';
import '../shared/models/user_model.dart';

class LoginRepository {
  final _api = NetworkServicesApi();

  Future<UserModel?> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrl.loginApi, data);

    if (response == null) {
      return null;
    }

    if (response['status'] == false) {
      return null;
    }

    return UserModel.fromJson(response);
  }

  Future<UserModel?> getLoginApi(dynamic data) async {
    final response = await _api.getApi(AppUrl.loginApi);
    return UserModel.fromJson(response);
  }

  Future<UserModel?> deleteLoginApi(dynamic data) async {
    final response = await _api.deleteApi(AppUrl.loginApi);
    return UserModel.fromJson(response);
  }
}
