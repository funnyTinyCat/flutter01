import 'package:flutter/material.dart';
import 'package:flutter_test_application/data/model/post.dart';
import 'package:flutter_test_application/data/service/create_post_service.dart';
import 'package:flutter_test_application/data/service/get_post_service.dart';

class PostProvider extends ChangeNotifier {
  //
  final List<Post> list = [];
  String message = '';

  getPost() async {
    //
    list.clear();
    list.addAll(await GetPostService().call());
    notifyListeners();
  }

  Future<void> createPost(String token) async {
    //
    await CreatePostService(
      message,
      null,
      token,
    ).call();

    message = '';
    getPost();
  }
}
