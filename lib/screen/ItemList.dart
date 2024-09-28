import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:competition/components/ItemCard.dart';
import 'package:competition/models/category.dart';
import 'package:competition/models/item.dart';
import 'package:competition/service/firestore.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  late List<Category> categories;

  ItemList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Items')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Items')
            .limit(10)
            .snapshots()
            .map((snapshot) {
          snapshot.docs.map((d) => Item.fromJson(d.data(), d.id));
        }),
        // stream: FirestoreService().getItemsByCategory(categories),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Column(
              children: [Text("Something went wrong")],
            );
          }

          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var items = snapshot.data ?? [];

          return Text(jsonEncode(items));

          // return ListView.builder(
          //   itemCount: items.length,
          //   itemBuilder: (context, index) {
          //     var item = items[index];
          //     return ItemCard(item: item);
          //   },
          // );
        },
      ),
    );
  }
}
