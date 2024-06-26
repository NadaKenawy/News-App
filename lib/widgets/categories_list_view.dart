import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/tech.jpg',name:'technology'),
    CategoryModel(image: 'assets/entertainment.jpg', name: 'entertainment'),
    CategoryModel(image: 'assets/health.png', name: 'health'),
    CategoryModel(image: 'assets/business.jpg', name: 'business'),
    CategoryModel(image: 'assets/science.jpg', name: 'science'),
    CategoryModel(image: 'assets/sports.jpg', name: 'sports'),
    CategoryModel(image: 'assets/breaking.jpg', name: 'top'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
