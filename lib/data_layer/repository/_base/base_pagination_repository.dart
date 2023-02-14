import 'package:near_camp/data_layer/api/dto/request/pagination_dto.dart';
import 'package:near_camp/domain_layer/model/_base/api_result.dart';
import 'package:near_camp/domain_layer/model/_base/pagination.dart';

/// Pagination 을 사용하는 Repository 의 공용 메서드를 정의
abstract class IBasePaginationRepository<M, Dto> {
  Future<ApiResult<Pagination<M>>> fetchPaginationData({
    required Dto requestDto,
    required PaginationDto paginationDto,
  });
}