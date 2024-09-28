class Review {
  String id;
  String itemId;
  String userId;
  double rating;
  String comment;

  Review({
    required this.id,
    required this.itemId,
    required this.userId,
    required this.rating,
    required this.comment,
  });

  Map<String, dynamic> toJson() {
    return {
      'itemId': itemId,
      'userId': userId,
      'rating': rating,
      'comment': comment,
    };
  }

  static Review fromJson(Map<String, dynamic> json, String id) {
    return Review(
      id: id,
      itemId: json['itemId'],
      userId: json['userId'],
      rating: json['rating'],
      comment: json['comment'],
    );
  }
}
