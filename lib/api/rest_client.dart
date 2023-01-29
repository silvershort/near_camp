import 'package:dio/dio.dart';
import 'package:near_camp/api/dto/request/client_info_dto.dart';
import 'package:near_camp/api/dto/request/location_based_dto.dart';
import 'package:near_camp/api/dto/request/pagination_dto.dart';
import 'package:near_camp/api/dto/response/api_result_dto.dart';
import 'package:near_camp/model/location_based_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'http://apis.data.go.kr/B551011/KorService')
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('/locationBasedList')
  Future<ApiResultDto<LocationBasedModel>> getLocationBasedList({
    @Queries() required ClientInfoDto clientInfoDto,
    @Queries() required LocationBasedDto locationBasedDto,
    @Queries() PaginationDto? paginationDto,
    @Query('_type') String type = 'json',
  });
}