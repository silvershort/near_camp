import 'package:dio/src/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/app_dio.dart';
import 'package:near_camp/api/dto/request/client_info_dto.dart';
import 'package:near_camp/api/dto/request/detail_common_dto.dart';
import 'package:near_camp/api/dto/response/api_result_dto.dart';
import 'package:near_camp/api/tour_rest_client.dart';
import 'package:near_camp/const/api_const.dart';
import 'package:near_camp/main.dart';
import 'package:near_camp/model/_common/api_error.dart';
import 'package:near_camp/model/_common/api_result.dart';
import 'package:near_camp/model/detail_common_model.dart';
import 'package:near_camp/repository/_common/base_repository.dart';

final detailCommonRepository = Provider((ref) {
  return DetailCommonRepository(restClient: ref.watch(tourRestClientProvider));
});

class DetailCommonRepository implements IBaseRepository<DetailCommonModel, DetailCommonDto> {
  DetailCommonRepository({required this.restClient});

  final TourRestClient restClient;

  @override
  Future<ApiResult<DetailCommonModel>> fetchData({required DetailCommonDto requestDto}) async {
    try {
      ApiResultDto<DetailCommonModel> result = await restClient.getDetailCommon(
        clientInfoDto: const ClientInfoDto(
          mobileOS: ApiConst.iosOS,
          mobileApp: ApiConst.appName,
          serviceKey: ApiConst.serviceKey,
        ),
        detailCommonDto: requestDto,
      );

      return ApiResult<DetailCommonModel>.success(result.response.body.items.item[0]);
    } catch (error, stackTrace) {
      logger.e('error : ${error.toString()}');
      logger.e('stackTrace : ${stackTrace.toString()}');
      return ApiResult.error(ApiError.getApiError(error), stackTrace);
    }
  }
}

















































