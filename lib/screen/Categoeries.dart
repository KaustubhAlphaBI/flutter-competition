import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:competition/components/CategoriesPIll.dart';
import 'package:competition/components/Pill.dart';
import 'package:competition/screen/ItemList.dart';
import 'package:competition/service/firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CategoriesPill(),
          Expanded(child: ItemList(categories: const [])),
        ],
      ),
    );
  }
}
