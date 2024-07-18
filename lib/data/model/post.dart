import 'package:flutter_test_application/data/model/owner.dart';
import 'package:flutter_test_application/data/model/user.dart';

class Post {
  final int? id;
  final String? message;
  final Owner owner;
  final DateTime? date;
  final String? image;

  Post(
    this.id,
    this.message,
    this.owner,
    this.date,
    this.image,
  );

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        json['id'],
        json['message'],
        Owner.fromJson(json['owner']), // == null ? null : json['owner'],
        json['date'] == null
            ? null
            : DateTime.parse(
                json['date'],
              ),
        json['image'],
      );
}

            //        : User.fromJson(
            //            json['owner'],