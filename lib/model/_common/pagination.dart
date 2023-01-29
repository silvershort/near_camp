import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination<T> with _$Pagination<T> {
  const factory Pagination({
    @Default(50)
    int numOfRows,
    @Default(1)
    int pageNo,
    @Default(0)
    int totalCount,
    @Default([])
    List<T> item,
  }) = _Pagination;
}
