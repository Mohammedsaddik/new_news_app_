import 'package:flutter/material.dart';
import 'package:news_app/model/categoryModel.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<categoryModel> categories = const [
    categoryModel(image: 'assets/business.avif', categoryName: 'Business'),
    categoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    categoryModel(image: 'assets/general.avif', categoryName: 'Genral'),
    categoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    categoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    categoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    categoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
