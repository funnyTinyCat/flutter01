import 'package:flutter_test_application/data/model/post.dart';
import 'package:flutter_test_application/data/service/base_service.dart';

class GetPostService extends BaseService<List<Post>> {
  @override
  Future<List<Post>> call() async {
    //
    final result = await get('api/post');

    return List.generate(
      result['data'].length,
      (index) => Post.fromJson(
        result['data'][index],
      ),
    );
  }
  //
}
