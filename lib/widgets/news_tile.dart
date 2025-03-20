import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (articleModel.image != null && articleModel.image!.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(6),

            child: Image.network(
              articleModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey[300], // لون بديل عند حدوث خطأ
                  child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                );
              },
            ),
          ),
        SizedBox(height: 12),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8),
        Text(
          articleModel.subtitle,
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        SizedBox(height: 14,)
      ],
    );
  }
}
