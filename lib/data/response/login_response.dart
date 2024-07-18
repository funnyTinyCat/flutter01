import 'package:flutter_test_application/data/model/user.dart';

class LoginResponse {
  //
  final User user;
  final String token;

  LoginResponse(this.user, this.token);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      //_$LoginResponseFromJson(json);
      LoginResponse(User.fromJson(json), json['Token']);
}
