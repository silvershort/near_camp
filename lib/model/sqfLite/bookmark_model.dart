class BookmarkModel {
  final String contentid;
  final String contenttypeid;
  final String title;
  final String? firstimage;

  BookmarkModel({
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