import 'package:flutter/material.dart';
import 'package:flutter_test_application/data/model/user.dart';

class AppRepo extends ChangeNotifier {
  String? _token;
  User? user;

  set token(String? value) {
    _token = value;
  }

  String? get token => _token;
}
