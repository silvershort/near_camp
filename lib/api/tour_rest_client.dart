import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/app_dio.dart';
import 'package:near_camp/api/dto/request/client_info_dto.dart';
import 'package:near_camp/api/dto/request/detail_information_dto.dart';
import 'package:near_camp/api/dto/request/detail_common_dto.dart';
import 'package:near_camp/api/dto/request/detail_image_dto.dart';
import 'package:near_camp/api/dto/request/location_based_dto.dart';
import 'package:near_camp/api/dto/request/pagination_dto.dart';
import 'package:near_camp/api/dto/response/api_result_dto.dart';
import 'package:near_camp/model/detail_common_model.dart';
import 'package:near_camp/model/detail_image_model.dart';
import 'package:near_camp/model/detail_info_model.dart';
import 'package:near_camp/model/location_based_model.dart';
import 'package:retrofit/retrofit.dart';

part 'tour_rest_client.g.dart';

final tourRestClientProvider = Provider((ref) {
  final Dio dio = ref.watch(appDioProvider);
  return TourRestClient(dio);
});

@RestApi(baseUrl: 'http://apis.data.go.kr/B551011/KorService')
abstract class TourRestClient {
  factory TourRestClient(Dio dio) = _TourRestClient;

  @GET('/locationBasedList')
  Future<ApiResultDto<LocationBasedModel>> getLocationBasedList({
    @Queries() required ClientInfoDto clientInfoDto,
    @Queries() required LocationBasedDto locationBasedDto,
    @Queries() PaginationDto? paginationDto,
  });

  @GET('/detailCommon')
  Future<ApiResultDto<DetailCommonModel>> getDetailCommon({
    @Queries() required ClientInfoDto clientInfoDto,
    @Queries() required DetailCommonDto detailCommonDto,
  });

  @GET('/detailInfo')
  Future<ApiResultDto<DetailInfoModel>> getDetailInfo({
    @Queries() required ClientInfoDto clientInfoDto,
    @Queries() required DetailInformationDto detailInfoDto,
  });

  @GET('/detailImage')
  Future<ApiResultDto<DetailImageModel>> getDetailImage({
    @Queries() required ClientInfoDto clientInfoDto,
    @Queries() required DetailImageDto detailImageDto,
  });
}
