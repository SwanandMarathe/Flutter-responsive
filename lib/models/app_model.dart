class AppModel {
  final String title;
  final String summary;
  final String iosurl;
  final String androidurl;
  final String imageUrl;

  AppModel({
    this.title,
    this.summary,
    this.iosurl,
    this.androidurl,
    this.imageUrl,
  });

  factory AppModel.fromMap(Map<String, dynamic> map) {
    return AppModel(
      title: map['title'],
      summary: map['summary'],
      iosurl: map['iosurl'],
      androidurl: map['androidurl'],
      imageUrl: map['imageUrl'],
    );
  }
}
