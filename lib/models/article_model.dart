class ArticleModel {
  final String? image;
  final String title;
  final String subtitle;

  ArticleModel({
    this.image,
    required this.title,
    required this.subtitle,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],  // لا بأس إذا كان null
      title: json['title'] ?? 'No title available', // استبدال null بقيمة افتراضية
      subtitle: json['description'] ?? 'No description available', // استبدال null بقيمة افتراضية
    );
  }

}
