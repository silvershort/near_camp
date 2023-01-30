import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/router/route_name.dart';
import 'package:near_camp/router/route_param.dart';
import 'package:near_camp/ui/dashboard/screen/community_screen.dart';
import 'package:near_camp/ui/dashboard/screen/dashboard_screen.dart';
import 'package:near_camp/ui/dashboard/screen/my_screen.dart';
import 'package:near_camp/ui/dashboard/screen/tour_list_screen.dart';
import 'package:near_camp/ui/onboarding/screen/permission_screen.dart';
import 'package:near_camp/ui/tour/screen/tour_detail_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey();

final goRouterProvider = Provider((ref) {
  return GoRouter(
    initialLocation: RouteName.permissionPath,
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return DashboardScreen(
            key: state.pageKey,
            location: state.location,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: RouteName.tourListPath,
            name: RouteName.tourList,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: TourListScreen(),
              );
            },
          ),
          GoRoute(
            path: RouteName.communityPath,
            name: RouteName.community,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: CommunityScreen(),
              );
            },
          ),
          GoRoute(
            path: RouteName.myPath,
            name: RouteName.my,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: MyScreen(),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: RouteName.permissionPath,
        name: RouteName.permission,
        builder: (context, state) {
          return const PermissionScreen();
        },
      ),
      GoRoute(
        path: RouteName.tourDetailPath,
        name: RouteName.tourDetail,
        builder: (context, state) {
          String? contentid = state.params[RouteParam.tourDetailParam1];
          String? contenttypeid = state.params[RouteParam.tourDetailParam2];
          return TourDetailScreen(
            contentId: contentid,
            contenttypeId: contenttypeid,
          );
        },
      ),
    ],
  );
});
