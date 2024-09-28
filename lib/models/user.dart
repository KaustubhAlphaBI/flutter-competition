class User {
  String id;
  String name;
  String profilePictureUrl;

  User({required this.id, required this.name, required this.profilePictureUrl});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'profilePictureUrl': profilePictureUrl,
    };
  }

  static User fromJson(Map<String, dynamic> json, String id) {
    return User(
      id: id,
      name: json['name'],
      profilePictureUrl: json['profilePictureUrl'],
    );
  }
}
