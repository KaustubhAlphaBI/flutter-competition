import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:competition/models/category.dart';
import 'package:competition/models/item.dart';
import 'package:competition/models/review.dart';
import 'package:competition/models/user.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  final CATEGORY = "Categories";
  final ITEMS = "Items";
  final REVIEWS = "Reviews";
  final USERS = "Users";

  // CREATE methods

  // Add a new category
  Future<void> addCategory(Category category) async {
    await _db.collection(CATEGORY).add(category.toJson());
  }

  // Add a new item
  Future<void> addItem(Item item) async {
    await _db.collection(ITEMS).add(item.toJson());
  }

  // Add a new review
  Future<void> addReview(Review review) async {
    await _db.collection(REVIEWS).add(review.toJson());
  }

  // Add a new user
  Future<void> addUser(User user) async {
    await _db.collection(USERS).add(user.toJson());
  }

  // READ methods

  // Get all categories
  Stream<List<Category>> getCategories() {
    return _db.collection(CATEGORY).snapshots().map((snapshot) => snapshot.docs
        .map((doc) => Category.fromJson(doc.data(), doc.id))
        .toList());
  }

  // Get all items filtered by category
  Stream<List<Item>> getItemsByCategory(List<Category> categories) {
    return _db.collection(ITEMS).snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Item.fromJson(doc.data(), doc.id)).toList());
  }

  // Get all reviews for an item
  Stream<List<Review>> getReviewsByItem(String itemId) {
    return _db
        .collection(REVIEWS)
        .where('itemId', isEqualTo: itemId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Review.fromJson(doc.data(), doc.id))
            .toList());
  }

  // Get a specific user by ID
  Future<User?> getUserById(String userId) async {
    DocumentSnapshot doc = await _db.collection(USERS).doc(userId).get();
    if (doc.exists) {
      return User.fromJson(doc.data() as Map<String, dynamic>, doc.id);
    }
    return null;
  }

  // UPDATE methods

  // Update category
  Future<void> updateCategory(String id, Category category) async {
    await _db.collection(CATEGORY).doc(id).update(category.toJson());
  }

  // Update item
  Future<void> updateItem(String id, Item item) async {
    await _db.collection(ITEMS).doc(id).update(item.toJson());
  }

  // Update review
  Future<void> updateReview(String id, Review review) async {
    await _db.collection(REVIEWS).doc(id).update(review.toJson());
  }

  // Update user
  Future<void> updateUser(String id, User user) async {
    await _db.collection(USERS).doc(id).update(user.toJson());
  }

  // DELETE methods

  // Delete category
  Future<void> deleteCategory(String id) async {
    await _db.collection(CATEGORY).doc(id).delete();
  }

  // Delete item
  Future<void> deleteItem(String id) async {
    await _db.collection(ITEMS).doc(id).delete();
  }

  // Delete review
  Future<void> deleteReview(String id) async {
    await _db.collection(REVIEWS).doc(id).delete();
  }

  // Delete user
  Future<void> deleteUser(String id) async {
    await _db.collection(USERS).doc(id).delete();
  }

  // Additional filters

  // Filter items by availability
  Stream<List<Item>> getAvailableItems() {
    return _db
        .collection(ITEMS)
        .where('isAvailable', isEqualTo: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Item.fromJson(doc.data(), doc.id))
            .toList());
  }

  // Filter items by veg status
  Stream<List<Item>> getVegItems() {
    return _db
        .collection(ITEMS)
        .where('isVegOnly', isEqualTo: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Item.fromJson(doc.data(), doc.id))
            .toList());
  }
}
