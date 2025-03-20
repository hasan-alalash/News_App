import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_services.dart';
import '../widgets/catedories_list_view.dart';
import '../widgets/category_card.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_builder.dart';
import '../widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News',style: TextStyle(color: Colors.black),),
            Text('Cloud',style: TextStyle(color: Colors.orange),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
    physics: BouncingScrollPhysics(),
    slivers: [
      SliverToBoxAdapter(
    child: CatedoriesListView(),),
    SliverToBoxAdapter(
    child: SizedBox(
    height: 32,
    ),),
      NewsListViewBuilder(
        category: 'general',
      ),




    ],
    ),
      //   child: Column(
      //     children: [
      //
      //       CatedoriesListView(),
      //       SizedBox(height: 24,),
      //       Expanded(child: NewsListView()),
      //     ],
      //   ),
       ),
    );
  }
}

