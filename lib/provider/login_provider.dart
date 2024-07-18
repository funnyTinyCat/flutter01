
import 'package:flutter/material.dart';
import 'package:flutter_test_application/data/response/login_response.dart';
import 'package:flutter_test_application/data/service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  //
  var username = '';
  var password = '';

  Future<LoginResponse> login() async {
    //   final username = usernameController.text;
//    final password = passwordController.text;
    return LoginService(username, password).call();
/*
    final response = await http.post(
      Uri.parse(loginRoute),
      body: jsonEncode(body),
      headers: <String, String>{
        'Content-type': 'Application/json; charset=UTF-8',
      },
    );

    // print(response.body);

    if (response.statusCode == 200) {
      print(response.body);

      final json = jsonDecode(response.body);

      print("Poslije jsonDecode");

      User user = User.fromJson(json['Data']);

      print("Poslije user.fromJson");

      //     print(jsonEncode(user));

      return user;
    } else {
      print(response.body);
      print("You have a problem.");
      throw Exception("Error.");
    }
    */
  }
}
