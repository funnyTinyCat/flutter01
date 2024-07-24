import 'package:flutter/material.dart';
import 'package:flutter_test_application/data/model/post.dart';
import 'package:flutter_test_application/data/service/create_post_service.dart';
import 'package:flutter_test_application/data/service/get_post_service.dart';
import 'package:flutter_test_application/data/service/upload_service.dart';
import 'package:flutter_test_application/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

class PostProvider extends ChangeNotifier {
  //
  final List<Post> list = [];
  String message = '';
  String? imagePath;

  getPost() async {
    //
    list.clear();
    list.addAll(await GetPostService().call());
    notifyListeners();
  }

  Future<void> createPost(String token) async {
    //
    String? image;

    if (imagePath != null) {
      //
      image = await upload();
    }

    await CreatePostService(
      message,
      image,
      //   token,
    ).call();

    message = '';
    imagePath = null;
    getPost();
  }

  //
  Future<String> upload() async {
    //
    return await UploadService(imagePath!).call();
  }

  pickImage(ImageSource source) async {
    //
    try {
      //
      final path = await Utils.pickImage(source);
      //  final croppedImage = await Utils.cropImage(path); // works on mobile
      //   imagePath = croppedImage?.path ?? '';
      imagePath = path;
      notifyListeners();
      //   print(path);
    } catch (e) {
      //
      print(e);
    }
  }

  deleteImage() {
    //
    imagePath = null;
    notifyListeners();
  }
}
