import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/data_layer/api/dto/request/location_based_dto.dart';
import 'package:near_camp/data_layer/repository/_base/base_pagination_repository.dart';
import 'package:near_camp/data_layer/repository/location_based_repository.dart';
import 'package:near_camp/domain_layer/model/_base/pagination.dart';
import 'package:near_camp/domain_layer/model/tour/location_based_model.dart';
import 'package:near_camp/domain_layer/provider/_base/pagination_base_notifier.dart';

final locationBaseProvider = AsyncNotifierProvider.family<LocationBasedNotifier, Pagination<LocationBasedModel>, LocationBasedDto>(LocationBasedNotifier.new);

class LocationBasedNotifier extends PaginationBaseNotifier<LocationBasedModel, LocationBasedDto> {
  @override
  IBasePaginationRepository<LocationBasedModel, LocationBasedDto> initRepository() {
    return ref.watch(locationBasedRepository);
  }
}
