import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:near_camp/api/dto/request/location_based_dto.dart';

final geolocatorModelProvider = NotifierProvider<GeolocatorModelNotifier, LocationBasedDto>(GeolocatorModelNotifier.new);

class GeolocatorModelNotifier extends Notifier<LocationBasedDto> {
  @override
  LocationBasedDto build() {
    return const LocationBasedDto(
      mapX: '126.9784147',
      mapY: '37.5666805',
      radius: '100000',
    );
  }

  Future<void> setCurrentLocation({required String radius}) async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    state = LocationBasedDto(
      mapX: position.longitude.toString(),
      mapY: position.latitude.toString(),
      radius: radius,
    );
  }
}
