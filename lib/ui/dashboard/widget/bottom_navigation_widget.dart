import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/router/route_name.dart';
import 'package:near_camp/ui/dashboard/controller/bottom_navigation_provider.dart';

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
            context.goNamed(RouteName.community);
            break;
          case 2:
            context.goNamed(RouteName.my);
            break;
          case 0:
          default:
            context.goNamed(RouteName.tourList);
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_work),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_applications),
          label: 'Setting',
        ),
      ],
    );
  }
}
