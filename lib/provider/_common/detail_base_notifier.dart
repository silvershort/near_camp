import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/main.dart';
import 'package:near_camp/model/_common/api_result.dart';
import 'package:near_camp/repository/_common/base_repository.dart';

abstract class DetailBaseNotifier<M, Dto> extends AutoDisposeFamilyAsyncNotifier<M?, Dto> {
  late IBaseRepository<M, Dto> _repository;

  @override
  FutureOr<M?> build(Dto arg) {
    state = AsyncLoading<M?>();
    _repository = initRepository();
    return fetchData(requestDto: arg).then((_) => state.value);
  }

  IBaseRepository<M, Dto> initRepository();

  Future<void> fetchData({required Dto requestDto}) async {
    logger.d('fetchData Dto : ${requestDto.runtimeType}');
    logger.d('fetchData Dto : ${requestDto.toString()}');
    ApiResult<M?> data = await _repository.fetchData(requestDto: requestDto);
    logger.d('data type : ${data.runtimeType}');

    data.when(
      success: (value) {
        state = AsyncData<M?>(value);
      },
      error: (error, stackTrace) {
        state = AsyncError<M?>(error.errorMessage, stackTrace);
      },
    );
  }
}