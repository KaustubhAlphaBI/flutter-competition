import 'package:competition/components/Pill.dart';
import 'package:competition/screen/ItemList.dart';
import 'package:competition/service/firestore.dart';
import 'package:flutter/material.dart';

class CategoriesPill extends StatelessWidget {
  const CategoriesPill({super.key});

  @override
  Widget build(BuildContext context) {
    var db = FirestoreService();

    return StreamBuilder(
        stream: db.getCategories(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Column(
              children: [Text("Something went wrong")],
            );
          }

          var categories = snapshot.data ?? [];

          return SizedBox(
            height: 32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                var category = categories[index];
                return Container(
                  margin: const EdgeInsets.all(4),
                  child: Pill(
                    text: category.categoryName,
                    backgroundColor: Colors.grey,
                    padding: 10,
                    onTap: () {
                      throw UnimplementedError(
                          "Category pill on click not implmented");
                    },
                  ),
                );
              },
            ),
          );
        });
  }
}
