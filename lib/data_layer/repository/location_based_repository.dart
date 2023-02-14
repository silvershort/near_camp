import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/const/api_const.dart';
import 'package:near_camp/data_layer/api/dto/request/client_info_dto.dart';
import 'package:near_camp/data_layer/api/dto/request/location_based_dto.dart';
import 'package:near_camp/data_layer/api/dto/request/pagination_dto.dart';
import 'package:near_camp/data_layer/api/dto/response/api_result_dto.dart';
import 'package:near_camp/data_layer/api/tour_rest_client.dart';
import 'package:near_camp/data_layer/repository/_base/base_pagination_repository.dart';
import 'package:near_camp/domain_layer/model/_base/api_error.dart';
import 'package:near_camp/domain_layer/model/_base/api_result.dart';
import 'package:near_camp/domain_layer/model/_base/pagination.dart';
import 'package:near_camp/domain_layer/model/tour/location_based_model.dart';
import 'package:near_camp/main.dart';

final locationBasedRepository = Provider<LocationBasedRepository>((ref) {
  return LocationBasedRepository(restClient: ref.watch(tourRestClientProvider));
});

class LocationBasedRepository implements IBasePaginationRepository<LocationBasedModel, LocationBasedDto> {
  LocationBasedRepository({required this.restClient});
  final TourRestClient restClient;

  @override
  Future<ApiResult<Pagination<LocationBasedModel>>> fetchPaginationData({
    required LocationBasedDto requestDto,
    required PaginationDto paginationDto,
  }) async {
    try {
      ApiResultDto<LocationBasedModel> result = await restClient.getLocationBasedList(
        clientInfoDto: const ClientInfoDto(
          mobileOS: ApiConst.iosOS,
          mobileApp: ApiConst.appName,
          serviceKey: ApiConst.serviceKey,
        ),
        locationBasedDto: requestDto,
        paginationDto: paginationDto,
      );

      return ApiResult<Pagination<LocationBasedModel>>.success(
        Pagination<LocationBasedModel>(
          item: result.response.body.items.item,
          numOfRows: result.response.body.numOfRows,
          pageNo: result.response.body.pageNo,
          totalCount: result.response.body.totalCount,
        ),
      );
    } catch (error, stackTrace) {
      logger.e('error : ${error.toString()}');
      logger.e('stackTrace : ${stackTrace.toString()}');
      return ApiResult.error(ApiError.getApiError(error), stackTrace);
    }
  }
}
