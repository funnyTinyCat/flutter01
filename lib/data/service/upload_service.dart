import 'dart:convert';

import 'package:flutter_test_application/config/app_config.dart';
import 'package:flutter_test_application/data/response/login_response.dart';
import 'package:flutter_test_application/data/service/base_service.dart';

class UploadService extends BaseService<String> {
  final String path;

  UploadService(this.path);

  @override
  Future<String> call() async {
    final result = await upload(
        'upload', 'photo', path // Uri.parse('${AppConfig.baseUrl}/api/
        // headers: <String, String>{
        //   'Content-type': 'Application/json; charset=UTF-8',
        // },
        );

    return result['Data']['url'];
  }
}
