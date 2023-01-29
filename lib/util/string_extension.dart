extension ConvertDistance on String {
  /// 거리소수점값을 제거하고, m 혹은 km 단위로 변환
  String get convertDistance {
    int millimeter = int.parse(double.parse(this).toStringAsFixed(0));
    if (millimeter ~/ 1000 == 0) {
      return '${millimeter}M';
    } else {
      int kilometer = millimeter ~/ 1000;
      millimeter = millimeter % 1000;
      return '$kilometer.${millimeter}KM';
    }
  }
}