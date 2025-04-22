import '../shared/models/user_model.dart';

class UserRepository {
  UserModel? _user;

  Future<UserModel?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      Duration(milliseconds: 300),
      () => _user = UserModel.empty,
    );
  }
}
