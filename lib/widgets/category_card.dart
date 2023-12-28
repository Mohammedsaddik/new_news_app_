import 'package:flutter/material.dart';
import 'package:news_app/model/categoryModel.dart';
import 'package:news_app/pages/category_pag.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final categoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryPage(
            category: category.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 100.0,
          width: 170.0,
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
