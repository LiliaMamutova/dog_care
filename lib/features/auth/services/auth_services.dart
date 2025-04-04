import 'dart:async';

import 'package:dog_care/config/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';

class AuthServices {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.authScreen, (route) => false));
  }
}
