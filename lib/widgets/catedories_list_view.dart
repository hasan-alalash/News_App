import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CatedoriesListView extends StatelessWidget {
   CatedoriesListView({super.key});
final List<CategoryModel> categories = [
  CategoryModel(
      image:'assets/bu.jpg',
      categoryName: 'Business' ),
   CategoryModel(
    image: 'assets/hg.jpg',
    categoryName: 'Entertainment',
  ),
 CategoryModel(
    image: 'assets/health.jpg',
    categoryName: 'Health',
  ),
   CategoryModel(
    image: 'assets/science.jpg',
    categoryName: 'Science',
  ),
   CategoryModel(
    image: 'assets/technology.jpg',
    categoryName: 'Technology',
  ),
 CategoryModel(
    image: 'assets/sports.jpg',
    categoryName: 'Sports',
  ),
 CategoryModel(
    image: 'assets/general.jpg',
    categoryName: 'General',
  ),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index){
        return CategoryCard(
          category: categories[index],
        );
      }),
    );
  }
}