import 'errors_message.dart';

String? emailValidator(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Please enter your email";
  }
  final RegExp emailPattern =
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  if (!emailPattern.hasMatch(value)) {
    return "Email is not valid. Please enter a valid email";
  }

  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.trim().isEmpty) {
    return errorMessageRequired;
  } else if (value.length < 6) {
    return "Password's length should be non less 6 symbol";
  }

  return null;
}
