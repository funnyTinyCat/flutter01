class User {
  //
  final int id;
  final String username;
  final String? firstname;
  final String? lastname;
  final String? mobile;
  final String? birthday;
  final String? gender;
  final bool? visibleGender;
//  final String? token;

  User(
    this.id,
    this.username,
    this.firstname,
    this.lastname,
    this.mobile,
    this.birthday,
    this.gender,
    this.visibleGender,
    //   this.token,
  );

/*
  factory User.fromJson(Map<String, dynamic> json) => User(
        json['id'],
        json['firstname'],
        json['lastname'],
        json['mobile'],
        json['birthday'],
        json['gender'],
        json['visibleGender'],
      );
      */

  factory User.fromJson(Map<String, dynamic> json) => User(
        json['Id'],
        json['Username'],
        json['Firstname'],
        json['Lastname'],
        json['Mobile'],
        json['Birthday'],
        json['Gender'],
        json['VisibleGender'],
        //     json['Token'],
      );
}
