// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';
//
// import 'news_tile.dart';
//
// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles = await  NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {
//
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return isLoading ? SliverToBoxAdapter(
//       child: SizedBox(
//         height: 700,
//         width: 200,// تعديل الارتفاع حسب الحاجة
//         child: Align(
//           alignment: Alignment.center,
//           child: CircularProgressIndicator(),
//         ),
//       ),
//     )
//         :SliverList(
//       delegate: SliverChildBuilderDelegate(
//           childCount: articles.length,
//               (context,index){
//             return Padding(
//               padding: const EdgeInsets.only(right: 22),
//               child: NewsTile(
//                 articleModel: articles[index],
//               ),
//             );
//           },
//       ),
//     );
//   }
// }
