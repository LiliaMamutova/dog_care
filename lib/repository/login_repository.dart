import 'package:dog_care/config/app_url.dart';
import 'package:dog_care/data/network/network_services_api.dart';
import 'package:dog_care/models/user_model.dart';

class LoginRepository {
  final _api = NetworkServicesApi();

  Future<UserModel?> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrl.loginApi, data);
    return UserModel(response);
  }

  Future<UserModel?> getLoginApi(dynamic data) async {
    final response = await _api.getApi(AppUrl.loginApi);
    return UserModel(response);
  }

  Future<UserModel?> deleteLoginApi(dynamic data) async {
    final response = await _api.deleteApi(AppUrl.loginApi);
    return UserModel(response);
  }
}
