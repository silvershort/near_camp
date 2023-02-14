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

extension ContentType on String {
  /// 컨텐츠타입 코드를 변환
  String get convertContentType {
    switch (this) {
      case '12':
        return '관광지';
      case '14':
        return '문화시설';
      case '15':
        return '행사공연축제';
      case '25':
        return '여행코스';
      case '28':
        return '레포츠';
      case '32':
        return '숙박';
      case '38':
        return '쇼핑';
      case '39':
        return '음식점';
      default:
        return '기타';
    }
  }
}