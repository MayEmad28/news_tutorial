class Newsmodel {
  final String? image;
  final String title;
  final String? describtion;

  Newsmodel(
      {required this.image, required this.title, required this.describtion});
  factory Newsmodel.fromJson(json) {
    
      return Newsmodel(
        image: json['urlToImage'],
        title: json['title'] ?? 'No title',
        describtion: json['description'] ?? ''
        );
  }
}
