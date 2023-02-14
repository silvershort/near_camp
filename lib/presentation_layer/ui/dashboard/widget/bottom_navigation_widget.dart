import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/presentation_layer/ui/dashboard/controller/bottom_navigation_provider.dart';
import 'package:near_camp/router/route_name.dart';

class BottomNavigationWidget extends ConsumerWidget {
  final String location;

  const BottomNavigationWidget({
    Key? key,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      currentIndex: ref.watch(bottomNavigationProvider.notifier).getCurrentIndexByLocation(location),
      onTap: (int index) {
        switch (index) {
          case 1:
            context.goNamed(RouteName.favorites);
            break;
          case 2:
            context.goNamed(RouteName.community);
            break;
          case 0:
          default:
            context.goNamed(RouteName.tourList);
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.comment),
          label: 'Community',
        ),
      ],
    );
  }
}
