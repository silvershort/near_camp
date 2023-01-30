import 'package:near_camp/router/route_param.dart';

class RouteName {
  static const String dashboard = 'dashboard';

  static const String tourListPath = '/tourList';
  static const String tourList = 'tourList';

  static const String communityPath = '/community';
  static const String community = 'community';

  static const String myPath = '/my';
  static const String my = 'my';

  static const String permissionPath = '/geolocator';
  static const String permission = 'geolocator';

  static const String tourDetailPath = '/tourDetail/:${RouteParam.tourDetailParam1}/:${RouteParam.tourDetailParam2}';
  static const String tourDetail = 'tourDetail';
}