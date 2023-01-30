// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailImageModel _$DetailImageModelFromJson(Map<String, dynamic> json) {
  return _DetailImageModel.fromJson(json);
}

/// @nodoc
mixin _$DetailImageModel {
  String get contentid => throw _privateConstructorUsedError;
  String get imgname => throw _privateConstructorUsedError;
  String get originimgurl => throw _privateConstructorUsedError;
  String get serialnum => throw _privateConstructorUsedError;
  String get smallimageur => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailImageModelCopyWith<DetailImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailImageModelCopyWith<$Res> {
  factory $DetailImageModelCopyWith(
          DetailImageModel value, $Res Function(DetailImageModel) then) =
      _$DetailImageModelCopyWithImpl<$Res, DetailImageModel>;
  @useResult
  $Res call(
      {String contentid,
      String imgname,
      String originimgurl,
      String serialnum,
      String smallimageur});
}

/// @nodoc
class _$DetailImageModelCopyWithImpl<$Res, $Val extends DetailImageModel>
    implements $DetailImageModelCopyWith<$Res> {
  _$DetailImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentid = null,
    Object? imgname = null,
    Object? originimgurl = null,
    Object? serialnum = null,
    Object? smallimageur = null,
  }) {
    return _then(_value.copyWith(
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      imgname: null == imgname
          ? _value.imgname
          : imgname // ignore: cast_nullable_to_non_nullable
              as String,
      originimgurl: null == originimgurl
          ? _value.originimgurl
          : originimgurl // ignore: cast_nullable_to_non_nullable
              as String,
      serialnum: null == serialnum
          ? _value.serialnum
          : serialnum // ignore: cast_nullable_to_non_nullable
              as String,
      smallimageur: null == smallimageur
          ? _value.smallimageur
          : smallimageur // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailImageModelCopyWith<$Res>
    implements $DetailImageModelCopyWith<$Res> {
  factory _$$_DetailImageModelCopyWith(
          _$_DetailImageModel value, $Res Function(_$_DetailImageModel) then) =
      __$$_DetailImageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentid,
      String imgname,
      String originimgurl,
      String serialnum,
      String smallimageur});
}

/// @nodoc
class __$$_DetailImageModelCopyWithImpl<$Res>
    extends _$DetailImageModelCopyWithImpl<$Res, _$_DetailImageModel>
    implements _$$_DetailImageModelCopyWith<$Res> {
  __$$_DetailImageModelCopyWithImpl(
      _$_DetailImageModel _value, $Res Function(_$_DetailImageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentid = null,
    Object? imgname = null,
    Object? originimgurl = null,
    Object? serialnum = null,
    Object? smallimageur = null,
  }) {
    return _then(_$_DetailImageModel(
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      imgname: null == imgname
          ? _value.imgname
          : imgname // ignore: cast_nullable_to_non_nullable
              as String,
      originimgurl: null == originimgurl
          ? _value.originimgurl
          : originimgurl // ignore: cast_nullable_to_non_nullable
              as String,
      serialnum: null == serialnum
          ? _value.serialnum
          : serialnum // ignore: cast_nullable_to_non_nullable
              as String,
      smallimageur: null == smallimageur
          ? _value.smallimageur
          : smallimageur // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailImageModel implements _DetailImageModel {
  const _$_DetailImageModel(
      {required this.contentid,
      required this.imgname,
      required this.originimgurl,
      required this.serialnum,
      required this.smallimageur});

  factory _$_DetailImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailImageModelFromJson(json);

  @override
  final String contentid;
  @override
  final String imgname;
  @override
  final String originimgurl;
  @override
  final String serialnum;
  @override
  final String smallimageur;

  @override
  String toString() {
    return 'DetailImageModel(contentid: $contentid, imgname: $imgname, originimgurl: $originimgurl, serialnum: $serialnum, smallimageur: $smallimageur)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailImageModel &&
            (identical(other.contentid, contentid) ||
                other.contentid == contentid) &&
            (identical(other.imgname, imgname) || other.imgname == imgname) &&
            (identical(other.originimgurl, originimgurl) ||
                other.originimgurl == originimgurl) &&
            (identical(other.serialnum, serialnum) ||
                other.serialnum == serialnum) &&
            (identical(other.smallimageur, smallimageur) ||
                other.smallimageur == smallimageur));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, contentid, imgname, originimgurl, serialnum, smallimageur);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailImageModelCopyWith<_$_DetailImageModel> get copyWith =>
      __$$_DetailImageModelCopyWithImpl<_$_DetailImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailImageModelToJson(
      this,
    );
  }
}

abstract class _DetailImageModel implements DetailImageModel {
  const factory _DetailImageModel(
      {required final String contentid,
      required final String imgname,
      required final String originimgurl,
      required final String serialnum,
      required final String smallimageur}) = _$_DetailImageModel;

  factory _DetailImageModel.fromJson(Map<String, dynamic> json) =
      _$_DetailImageModel.fromJson;

  @override
  String get contentid;
  @override
  String get imgname;
  @override
  String get originimgurl;
  @override
  String get serialnum;
  @override
  String get smallimageur;
  @override
  @JsonKey(ignore: true)
  _$$_DetailImageModelCopyWith<_$_DetailImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
