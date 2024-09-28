class Category {
  String id;
  String categoryName;

  Category({required this.id, required this.categoryName});

  Map<String, dynamic> toJson() {
    return {
      'categoryName': categoryName,
    };
  }

  static Category fromJson(Map<String, dynamic> json, String id) {
    return Category(
      id: id,
      categoryName: json['categoryName'],
    );
  }
}
