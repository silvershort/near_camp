// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShareModel {
  String get path => throw _privateConstructorUsedError;
  String get pathParam => throw _privateConstructorUsedError;
  SocialMetaTagParameters get metaTag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShareModelCopyWith<ShareModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareModelCopyWith<$Res> {
  factory $ShareModelCopyWith(
          ShareModel value, $Res Function(ShareModel) then) =
      _$ShareModelCopyWithImpl<$Res, ShareModel>;
  @useResult
  $Res call({String path, String pathParam, SocialMetaTagParameters metaTag});
}

/// @nodoc
class _$ShareModelCopyWithImpl<$Res, $Val extends ShareModel>
    implements $ShareModelCopyWith<$Res> {
  _$ShareModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? pathParam = null,
    Object? metaTag = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      pathParam: null == pathParam
          ? _value.pathParam
          : pathParam // ignore: cast_nullable_to_non_nullable
              as String,
      metaTag: null == metaTag
          ? _value.metaTag
          : metaTag // ignore: cast_nullable_to_non_nullable
              as SocialMetaTagParameters,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShareModelCopyWith<$Res>
    implements $ShareModelCopyWith<$Res> {
  factory _$$_ShareModelCopyWith(
          _$_ShareModel value, $Res Function(_$_ShareModel) then) =
      __$$_ShareModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String pathParam, SocialMetaTagParameters metaTag});
}

/// @nodoc
class __$$_ShareModelCopyWithImpl<$Res>
    extends _$ShareModelCopyWithImpl<$Res, _$_ShareModel>
    implements _$$_ShareModelCopyWith<$Res> {
  __$$_ShareModelCopyWithImpl(
      _$_ShareModel _value, $Res Function(_$_ShareModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? pathParam = null,
    Object? metaTag = null,
  }) {
    return _then(_$_ShareModel(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      pathParam: null == pathParam
          ? _value.pathParam
          : pathParam // ignore: cast_nullable_to_non_nullable
              as String,
      metaTag: null == metaTag
          ? _value.metaTag
          : metaTag // ignore: cast_nullable_to_non_nullable
              as SocialMetaTagParameters,
    ));
  }
}

/// @nodoc

class _$_ShareModel implements _ShareModel {
  const _$_ShareModel(
      {required this.path, required this.pathParam, required this.metaTag});

  @override
  final String path;
  @override
  final String pathParam;
  @override
  final SocialMetaTagParameters metaTag;

  @override
  String toString() {
    return 'ShareModel(path: $path, pathParam: $pathParam, metaTag: $metaTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShareModel &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.pathParam, pathParam) ||
                other.pathParam == pathParam) &&
            (identical(other.metaTag, metaTag) || other.metaTag == metaTag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, pathParam, metaTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShareModelCopyWith<_$_ShareModel> get copyWith =>
      __$$_ShareModelCopyWithImpl<_$_ShareModel>(this, _$identity);
}

abstract class _ShareModel implements ShareModel {
  const factory _ShareModel(
      {required final String path,
      required final String pathParam,
      required final SocialMetaTagParameters metaTag}) = _$_ShareModel;

  @override
  String get path;
  @override
  String get pathParam;
  @override
  SocialMetaTagParameters get metaTag;
  @override
  @JsonKey(ignore: true)
  _$$_ShareModelCopyWith<_$_ShareModel> get copyWith =>
      throw _privateConstructorUsedError;
}
