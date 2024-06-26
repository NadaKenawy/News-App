class ArticlesModel {
  final String? image;
  final String title;
  final String? description;
  final String link;

  ArticlesModel(
      {required this.link,
      required this.image,
      required this.title,
      required this.description});
  factory ArticlesModel.fromJson(Map<String, dynamic> json) {
    return ArticlesModel(
      link: json['link'],
      image: json['image_url'],
      title: json['title'],
      description: json['description'],
    );
  }
}
