class Item {
  String id;
  String name;
  String description;
  double price;
  bool isVegOnly;
  int calories;
  double rating;
  bool isAvailable;
  String categoryId;
  int spicyLevel;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.isVegOnly,
      required this.calories,
      required this.rating,
      required this.isAvailable,
      required this.categoryId,
      required this.spicyLevel});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'isVegOnly': isVegOnly,
      'calories': calories,
      'rating': rating,
      'isAvailable': isAvailable,
      'categoryId': categoryId,
      'spicyLevel': spicyLevel
    };
  }

  static Item fromJson(Map<String, dynamic> json, String id) {
    return Item(
      id: id,
      name: json['name'],
      description: json['description'],
      price: json['price'],
      isVegOnly: json['isVegOnly'],
      calories: json['calories'],
      rating: json['rating'],
      isAvailable: json['isAvailable'],
      categoryId: json['categoryId'],
      spicyLevel: json['spicyLevel'],
    );
  }
}
