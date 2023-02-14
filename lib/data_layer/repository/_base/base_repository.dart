import 'package:near_camp/domain_layer/model/_base/api_result.dart';

abstract class IBaseRepository<M, Dto> {
  Future<ApiResult<M>> fetchData({
    required Dto requestDto,
  });
}