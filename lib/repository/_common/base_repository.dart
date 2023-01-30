import 'package:near_camp/model/_common/api_result.dart';

abstract class IBaseRepository<M, Dto> {
  Future<ApiResult<M>> fetchData({
    required Dto requestDto,
  });
}