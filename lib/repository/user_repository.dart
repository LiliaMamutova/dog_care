import 'package:dog_care/models/user_model.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  UserModel? _user;

  Future<UserModel?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      Duration(milliseconds: 300),
      () => _user = UserModel(Uuid().v4()),
    );
  }
}
