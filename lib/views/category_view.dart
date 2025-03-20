import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category, required this.ti});
final String category;
final String ti;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:   Text(ti,style: TextStyle(color: Colors.white),),backgroundColor: Colors.teal,iconTheme: IconThemeData(color: Colors.orange),),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category:category ,
            ),
          ],
        ),
      ),
    );
  }
}
