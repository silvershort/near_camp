import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:near_camp/const/api_const.dart';
import 'package:near_camp/domain_layer/provider/geolocator/geolocator_dto_provider.dart';

final geolocatorPermissionProvider = NotifierProvider<GeolocatorPermissionNotifier, bool>(GeolocatorPermissionNotifier.new);

class GeolocatorPermissionNotifier extends Notifier<bool> {
  @override
  bool build() {
    initPermission();
    return false;
  }

  void initPermission() {
    Geolocator.checkPermission().then((value) {
      state = value == LocationPermission.always || value == LocationPermission.whileInUse;
    });
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
