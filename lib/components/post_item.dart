import 'package:flutter/material.dart';
import 'package:flutter_test_application/config/app_config.dart';
import 'package:flutter_test_application/data/model/post.dart';
import 'package:flutter_test_application/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/temp/user1.png",
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                '${post.owner.firstname} ${post.owner.lastname}',
                style:
                    //            color: AppColors.font,,
                    AppText.subtitle3,
              ),
            ],
          ),
          if (post.image != null) ...[
            const SizedBox(
              height: 12,
            ),
            Image.network('${AppConfig.baseUrl}/resources/${post.image}'),
          ],
          const SizedBox(
            height: 12,
          ),
          Text(
            "${post.message} ",
            //        'The sun is also reminder that we can rise again after darkness it comes brightness. We have to always keep it in mind.',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
