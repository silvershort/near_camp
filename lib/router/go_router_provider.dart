import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/presentation_layer/ui/dashboard/screen/community_screen.dart';
import 'package:near_camp/presentation_layer/ui/dashboard/screen/dashboard_screen.dart';
import 'package:near_camp/presentation_layer/ui/dashboard/screen/favorites_screen.dart';
import 'package:near_camp/presentation_layer/ui/dashboard/screen/tour_list_screen.dart';
import 'package:near_camp/presentation_layer/ui/error/screen/error_screen.dart';
import 'package:near_camp/presentation_layer/ui/onboarding/screen/permission_screen.dart';
import 'package:near_camp/presentation_layer/ui/tour/screen/tour_detail_screen.dart';
import 'package:near_camp/router/route_name.dart';
import 'package:near_camp/router/route_param.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey();

final goRouterProvider = Provider((ref) {
  return GoRouter(
    initialLocation: RouteName.permissionPath,
    navigatorKey: _rootNavigatorKey,
    errorBuilder: (context, state) {
      return ErrorScreen(message: state.error.toString());
    },
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
            path: RouteName.favoritesPath,
            name: RouteName.favorites,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: FavoritesScreen(),
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
        path: '${RouteName.tourDetailPath}/:${RouteParam.tourDetailParam1}/:${RouteParam.tourDetailParam2}',
        name: RouteName.tourDetail,
        builder: (context, state) {
          try {
            String contentid = state.params[RouteParam.tourDetailParam1]!;
            String contenttypeid = state.params[RouteParam.tourDetailParam2]!;
            return TourDetailScreen(
              contentId: contentid,
              contentTypeId: contenttypeid,
            );
          } catch (error, stackTrace) {
            return ErrorScreen(message: error.toString());
          }
        },
      ),
    ],
  );
});
