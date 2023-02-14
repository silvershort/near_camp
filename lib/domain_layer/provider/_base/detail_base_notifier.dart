import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/data_layer/repository/_base/base_repository.dart';
import 'package:near_camp/domain_layer/model/_base/api_result.dart';
import 'package:near_camp/main.dart';

abstract class DetailBaseNotifier<M, Dto> extends AutoDisposeFamilyAsyncNotifier<M, Dto> {
  late IBaseRepository<M, Dto> _repository;

  @override
  FutureOr<M> build(Dto arg) {
    _repository = initRepository();
    return fetchData(requestDto: arg);
  }

  IBaseRepository<M, Dto> initRepository();

  Future<M> fetchData({required Dto requestDto}) async {
    logger.d('fetchData Dto : ${requestDto.runtimeType}');
    logger.d('fetchData Dto : ${requestDto.toString()}');
    ApiResult<M> data = await _repository.fetchData(requestDto: requestDto);

    return data.when(
      success: (value) {
        logger.d('success value : ${value.toString()}');
        state = AsyncData<M>(value);
        return state.value!;
      },
      error: (error, stackTrace) {
        state = AsyncError<M>(error.errorMessage, stackTrace);
        return Future.error(error.errorMessage, stackTrace);
      },
    );
  }
}