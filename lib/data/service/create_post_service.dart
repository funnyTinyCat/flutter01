import 'package:flutter_test_application/data/model/post.dart';
import 'package:flutter_test_application/data/service/base_service.dart';

class CreatePostService extends BaseService<void> {
  final String message;
  final String? image;
//  final String token;

  CreatePostService(this.message, this.image); // , this.token

  @override
  Future<void> call() async {
    //
    final body = {
      'message': message,
      'ownerId': 3,
      // 'image': 'pingue.jpg',
    };

    if (image != null) {
      body['image'] = image!;
    }

    await post(
      'api/post',
      body: body,

      //   token: token,
    );
  }
  //
}
