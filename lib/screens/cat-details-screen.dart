import 'package:flutter/material.dart';
import 'package:my_cats/Widgets/cat-details.dart';
import 'package:my_cats/model/cat.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;

  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(cat.name)),
        backgroundColor: Colors.deepPurple,
      ),
      body: CatDetailsWidget(cat: cat),
    );
  }
}
