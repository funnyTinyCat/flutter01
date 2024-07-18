class Owner {
  final String username;
  final String? firstname;
  final String? lastname;

  Owner(
    this.username,
    this.firstname,
    this.lastname,
  );

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        json['username'],
        json['firstname'],
        json['lastname'],
      );
}
