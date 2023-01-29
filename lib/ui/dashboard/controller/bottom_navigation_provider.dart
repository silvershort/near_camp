import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/router/route_name.dart';

final bottomNavigationProvider = NotifierProvider<BottomNavigationNotifier, String>(BottomNavigationNotifier.new);

class BottomNavigationNotifier extends Notifier<String> {
  @override
  String build() {
    return RouteName.tourList;
  }

  void setRouteState(String routeName) {
    state = routeName;
  }

  int getCurrentIndexByLocation(String location) {
    switch (location) {
      case RouteName.tourListPath:
        return 0;
      case RouteName.communityPath:
        return 1;
      case RouteName.myPath:
        return 2;
      default:
        return 0;
    }
  }
}