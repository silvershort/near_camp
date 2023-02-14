import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/const/api_const.dart';
import 'package:near_camp/data_layer/api/dto/request/client_info_dto.dart';
import 'package:near_camp/data_layer/api/dto/request/detail_information_dto.dart';
import 'package:near_camp/data_layer/api/dto/response/api_result_dto.dart';
import 'package:near_camp/data_layer/api/tour_rest_client.dart';
import 'package:near_camp/data_layer/repository/_base/base_repository.dart';
import 'package:near_camp/domain_layer/model/_base/api_error.dart';
import 'package:near_camp/domain_layer/model/_base/api_result.dart';
import 'package:near_camp/domain_layer/model/tour/detail_info_model.dart';
import 'package:near_camp/main.dart';

final detailInfoRepositoryProvider = Provider((ref) {
  return DetailInfoRepository(restClient: ref.watch(tourRestClientProvider));
});

class DetailInfoRepository implements IBaseRepository<DetailInfoModel, DetailInfoDto> {
  DetailInfoRepository({required this.restClient});

  final TourRestClient restClient;

  @override
  Future<ApiResult<DetailInfoModel>> fetchData({required DetailInfoDto requestDto}) async {
    try {
      ApiResultDto<DetailInfoModel> result = await restClient.getDetailInfo(
        clientInfoDto: const ClientInfoDto(
          mobileOS: ApiConst.iosOS,
          mobileApp: ApiConst.appName,
          serviceKey: ApiConst.serviceKey,
        ),
        detailInfoDto: requestDto,
      );

      return ApiResult<DetailInfoModel>.success(result.response.body.items.item[0]);
    } catch (error, stackTrace) {
      logger.e('error : ${error.toString()}');
      logger.e('stackTrace : ${stackTrace.toString()}');
      return ApiResult.error(ApiError.getApiError(error), stackTrace);
    }
  }
}
