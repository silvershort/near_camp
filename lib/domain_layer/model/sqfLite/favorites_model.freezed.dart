// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritesModel _$FavoritesModelFromJson(Map<String, dynamic> json) {
  return _FavoritesModel.fromJson(json);
}

/// @nodoc
mixin _$FavoritesModel {
  String get contentid => throw _privateConstructorUsedError;
  String get contenttypeid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get firstimage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesModelCopyWith<FavoritesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesModelCopyWith<$Res> {
  factory $FavoritesModelCopyWith(
          FavoritesModel value, $Res Function(FavoritesModel) then) =
      _$FavoritesModelCopyWithImpl<$Res, FavoritesModel>;
  @useResult
  $Res call(
      {String contentid,
      String contenttypeid,
      String title,
      String? firstimage});
}

/// @nodoc
class _$FavoritesModelCopyWithImpl<$Res, $Val extends FavoritesModel>
    implements $FavoritesModelCopyWith<$Res> {
  _$FavoritesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? title = null,
    Object? firstimage = freezed,
  }) {
    return _then(_value.copyWith(
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: freezed == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoritesModelCopyWith<$Res>
    implements $FavoritesModelCopyWith<$Res> {
  factory _$$_FavoritesModelCopyWith(
          _$_FavoritesModel value, $Res Function(_$_FavoritesModel) then) =
      __$$_FavoritesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentid,
      String contenttypeid,
      String title,
      String? firstimage});
}

/// @nodoc
class __$$_FavoritesModelCopyWithImpl<$Res>
    extends _$FavoritesModelCopyWithImpl<$Res, _$_FavoritesModel>
    implements _$$_FavoritesModelCopyWith<$Res> {
  __$$_FavoritesModelCopyWithImpl(
      _$_FavoritesModel _value, $Res Function(_$_FavoritesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? title = null,
    Object? firstimage = freezed,
  }) {
    return _then(_$_FavoritesModel(
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: freezed == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoritesModel implements _FavoritesModel {
  const _$_FavoritesModel(
      {required this.contentid,
      required this.contenttypeid,
      required this.title,
      this.firstimage});

  factory _$_FavoritesModel.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritesModelFromJson(json);

  @override
  final String contentid;
  @override
  final String contenttypeid;
  @override
  final String title;
  @override
  final String? firstimage;

  @override
  String toString() {
    return 'FavoritesModel(contentid: $contentid, contenttypeid: $contenttypeid, title: $title, firstimage: $firstimage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesModel &&
            (identical(other.contentid, contentid) ||
                other.contentid == contentid) &&
            (identical(other.contenttypeid, contenttypeid) ||
                other.contenttypeid == contenttypeid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firstimage, firstimage) ||
                other.firstimage == firstimage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentid, contenttypeid, title, firstimage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesModelCopyWith<_$_FavoritesModel> get copyWith =>
      __$$_FavoritesModelCopyWithImpl<_$_FavoritesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritesModelToJson(
      this,
    );
  }
}

abstract class _FavoritesModel implements FavoritesModel {
  const factory _FavoritesModel(
      {required final String contentid,
      required final String contenttypeid,
      required final String title,
      final String? firstimage}) = _$_FavoritesModel;

  factory _FavoritesModel.fromJson(Map<String, dynamic> json) =
      _$_FavoritesModel.fromJson;

  @override
  String get contentid;
  @override
  String get contenttypeid;
  @override
  String get title;
  @override
  String? get firstimage;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesModelCopyWith<_$_FavoritesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
