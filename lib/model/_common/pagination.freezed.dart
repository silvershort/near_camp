// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pagination<T> {
  int get numOfRows => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<T> get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationCopyWith<T, Pagination<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<T, $Res> {
  factory $PaginationCopyWith(
          Pagination<T> value, $Res Function(Pagination<T>) then) =
      _$PaginationCopyWithImpl<T, $Res, Pagination<T>>;
  @useResult
  $Res call({int numOfRows, int pageNo, int totalCount, List<T> item});
}

/// @nodoc
class _$PaginationCopyWithImpl<T, $Res, $Val extends Pagination<T>>
    implements $PaginationCopyWith<T, $Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfRows = null,
    Object? pageNo = null,
    Object? totalCount = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationCopyWith<T, $Res>
    implements $PaginationCopyWith<T, $Res> {
  factory _$$_PaginationCopyWith(
          _$_Pagination<T> value, $Res Function(_$_Pagination<T>) then) =
      __$$_PaginationCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int numOfRows, int pageNo, int totalCount, List<T> item});
}

/// @nodoc
class __$$_PaginationCopyWithImpl<T, $Res>
    extends _$PaginationCopyWithImpl<T, $Res, _$_Pagination<T>>
    implements _$$_PaginationCopyWith<T, $Res> {
  __$$_PaginationCopyWithImpl(
      _$_Pagination<T> _value, $Res Function(_$_Pagination<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfRows = null,
    Object? pageNo = null,
    Object? totalCount = null,
    Object? item = null,
  }) {
    return _then(_$_Pagination<T>(
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_Pagination<T> implements _Pagination<T> {
  const _$_Pagination(
      {this.numOfRows = 50,
      this.pageNo = 1,
      this.totalCount = 0,
      final List<T> item = const []})
      : _item = item;

  @override
  @JsonKey()
  final int numOfRows;
  @override
  @JsonKey()
  final int pageNo;
  @override
  @JsonKey()
  final int totalCount;
  final List<T> _item;
  @override
  @JsonKey()
  List<T> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  String toString() {
    return 'Pagination<$T>(numOfRows: $numOfRows, pageNo: $pageNo, totalCount: $totalCount, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pagination<T> &&
            (identical(other.numOfRows, numOfRows) ||
                other.numOfRows == numOfRows) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numOfRows, pageNo, totalCount,
      const DeepCollectionEquality().hash(_item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationCopyWith<T, _$_Pagination<T>> get copyWith =>
      __$$_PaginationCopyWithImpl<T, _$_Pagination<T>>(this, _$identity);
}

abstract class _Pagination<T> implements Pagination<T> {
  const factory _Pagination(
      {final int numOfRows,
      final int pageNo,
      final int totalCount,
      final List<T> item}) = _$_Pagination<T>;

  @override
  int get numOfRows;
  @override
  int get pageNo;
  @override
  int get totalCount;
  @override
  List<T> get item;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationCopyWith<T, _$_Pagination<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
