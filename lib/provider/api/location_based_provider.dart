import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/dto/request/location_based_dto.dart';
import 'package:near_camp/model/_common/pagination.dart';
import 'package:near_camp/model/location_based_model.dart';
import 'package:near_camp/provider/_common/pagination_provider.dart';
import 'package:near_camp/repository/_common/pagination_repository.dart';
import 'package:near_camp/repository/location_based_repository.dart';

final locationBaseProvider = AsyncNotifierProvider<LocationBasedNotifier, Pagination<LocationBasedModel>>(LocationBasedNotifier.new);

class LocationBasedNotifier extends PaginationProvider<LocationBasedModel, LocationBasedDto> {
  @override
  LocationBasedDto initModelDto() {
    return const LocationBasedDto(
      mapX: '126.988259',
      mapY: '37.551399',
      radius: '5000',
    );
  }

  @override
  IBasePaginationRepository<LocationBasedModel, LocationBasedDto> initRepository() {
    return ref.watch(locationBasedRepository);
  }
}
