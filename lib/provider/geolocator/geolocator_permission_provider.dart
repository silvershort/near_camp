import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:near_camp/const/api_const.dart';
import 'package:near_camp/main.dart';
import 'package:near_camp/provider/geolocator/geolocator_dto_provider.dart';
import 'package:near_camp/provider/ui/snackbar_provider.dart';
import 'package:near_camp/ui_component/scaffold/default_snack_bar.dart';

/*final geolocatorPermissionProvider = FutureProvider.autoDispose<bool>((ref) async {
  bool serviceEnabled;
  LocationPermission geolocator;

  print("@@@ asdf123");

  serviceEnabled = await Geolocator.isLocationServiceEnabled();

  if (!serviceEnabled) {
    logger.d('@@@ serviceEnabled');
    ref.read(scaffoldProvider.notifier).showSnackBar(
          DefaultSnackBar(content: 'Location services are disabled. Please enable the services'),
        );
    return false;
  }
  geolocator = await Geolocator.checkPermission();
  if (geolocator == LocationPermission.denied) {
    logger.d('@@@ denied');
    geolocator = await Geolocator.requestPermission();
    if (geolocator == LocationPermission.denied) {
      ref.read(scaffoldProvider.notifier).showSnackBar(
            DefaultSnackBar(content: 'Location permissions are denied'),
          );
      return false;
    }
  }
  if (geolocator == LocationPermission.deniedForever) {
    logger.d('@@@ deniedForever');
    ref.read(scaffoldProvider.notifier).showSnackBar(
          DefaultSnackBar(content: 'Location permissions are permanently denied, we cannot request permissions.'),
        );
    return false;
  }
  return true;
});*/

final geolocatorPermissionProvider = NotifierProvider<GeolocatorPermissionNotifier, bool>(GeolocatorPermissionNotifier.new);

class GeolocatorPermissionNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  Future<void> getLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      state = false;
    }
    permission = await Geolocator.checkPermission();
    if (!checkPermission(permission)) {
      permission = await Geolocator.requestPermission();
    }

    if (checkPermission(permission)) {
      await ref.read(geolocatorModelProvider.notifier).setCurrentLocation(radius: ApiConst.defaultRadius);
      state = true;
    } else {
      state = false;
    }
  }

  bool checkPermission(LocationPermission permission) {
    return permission == LocationPermission.always || permission == LocationPermission.whileInUse;
  }
}
