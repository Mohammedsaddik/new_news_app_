class ArticalModel {
  final String? Image;
  final String Title;
  final String? SubTitle;

  ArticalModel(
      {required this.Image, required this.Title, required this.SubTitle});

  factory ArticalModel.fromJson(json) => ArticalModel(
        Image: json['urlToImage'],
        Title: json['title'],
        SubTitle: json['description'],
      );
}
