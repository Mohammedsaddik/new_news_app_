import 'package:flutter/material.dart';
import 'package:news_app/widgets/New_ListViewBuider.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final String category; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewListViewBuider(
            category: category,
          ),
        ],
      ),
    );
  }
}
