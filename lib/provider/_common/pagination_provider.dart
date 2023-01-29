import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/dto/request/pagination_dto.dart';
import 'package:near_camp/const/api_const.dart';
import 'package:near_camp/model/_common/api_result.dart';
import 'package:near_camp/model/_common/pagination.dart';
import 'package:near_camp/repository/_common/pagination_repository.dart';

/// Pagination 을 사용하는 Provider 의 기능을 정의하는 부모 Notifier, <M, Dto> M = Model, Dto = RequestDto
abstract class PaginationProvider<M, Dto> extends AsyncNotifier<Pagination<M>> {
  late IBasePaginationRepository<M, Dto> _repository;
  late Dto _modelDto;

  @override
  FutureOr<Pagination<M>> build() {
    state = AsyncLoading<Pagination<M>>();
    _repository = initRepository();
    _modelDto = initModelDto();
    return fetchData().then((value) => state.value ?? Pagination<M>());
  }

  IBasePaginationRepository<M, Dto> initRepository();

  Dto initModelDto();

  Future<void> fetchData({bool loadMore = false}) async {
    ApiResult<Pagination<M>> newData = await _repository.fetchPaginationData(
      requestDto: _modelDto,
      paginationDto: PaginationDto(
        numOfRows: state.value?.numOfRows ?? ApiConst.defaultNumOfRows,
        pageNo: (state.value?.pageNo ?? 0) + 1,
      ),
    );

    newData.when(
      success: (value) {
        state = AsyncData<Pagination<M>>(
          value.copyWith(item: [if (loadMore) ...state.value?.item ?? [], ...value.item]),
        );
      },
      error: (error, stackTrace) {
        state = AsyncError<Pagination<M>>(error.errorMessage, stackTrace).copyWithPrevious(state);
      },
    );
  }

  void loadMore() {
    if (state == AsyncLoading<Pagination<M>>().copyWithPrevious(state)) {
      return;
    }
    state = AsyncLoading<Pagination<M>>().copyWithPrevious(state);
    fetchData(loadMore: true);
  }
}
