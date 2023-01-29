import 'package:easy_localization/easy_localization.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/provider/geolocator/geolocator_permission_provider.dart';
import 'package:near_camp/router/route_name.dart';

class PermissionScreen extends ConsumerStatefulWidget {
  const PermissionScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends ConsumerState<PermissionScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<bool>(geolocatorPermissionProvider, (previous, next) {
      if (previous == true || next == true) {
        context.goNamed(RouteName.tourList);
      }
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                tr('permission_information_message'),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    ExtendedImage.asset(
                      'assets/images/geolocator/gps.png',
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr('permission_gps_information_title'),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            tr('permission_gps_information_content'),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  ref.read(geolocatorPermissionProvider.notifier).getLocationPermission();
                },
                child: Text(
                  tr('common_start'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
