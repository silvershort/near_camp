class FavoritesModel {
  final String contentid;
  final String contenttypeid;
  final String title;
  final String? firstimage;

  FavoritesModel({
    required this.contentid,
    required this.contenttypeid,
    required this.title,
    this.firstimage,
  });

  Map<String, dynamic> toMap() {
    return {
      'contentid' : contentid,
      'contenttypeid' : contenttypeid,
      'title' : title,
      'firstimage' : firstimage,
    };
  }
}