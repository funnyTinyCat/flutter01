import 'dart:convert';

import 'package:flutter_test_application/config/app_config.dart';
import 'package:flutter_test_application/data/response/login_response.dart';
import 'package:flutter_test_application/data/service/base_service.dart';
import 'package:http/http.dart' as http;

class LoginService extends BaseService<LoginResponse> {
  final String username;
  final String password;

  LoginService(this.username, this.password);

  Future<LoginResponse> call() async {
    final result = await http.post(
      //    Uri.parse('${AppConfig.baseUrl}/api/login'),
      //   Uri.parse('http://localhost:5078/api/login'),
      //   Uri.http('localhost:5078', 'api/login'),
      //    Uri.http(AppConfig.baseUrl, 'api/login'),
      Uri.parse('${AppConfig.baseUrl}/api/login'),
      body: jsonEncode(
        {
          'Username': username,
          'Password': password,
        },
      ),
      headers: <String, String>{
        'Content-type': 'Application/json; charset=UTF-8',
      },
    );

    return LoginResponse.fromJson(jsonDecode(result.body)['Data']);
  }
}
