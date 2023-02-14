// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoritesModel _$$_FavoritesModelFromJson(Map<String, dynamic> json) =>
    _$_FavoritesModel(
      contentid: json['contentid'] as String,
      contenttypeid: json['contenttypeid'] as String,
      title: json['title'] as String,
      firstimage: json['firstimage'] as String?,
    );

Map<String, dynamic> _$$_FavoritesModelToJson(_$_FavoritesModel instance) =>
    <String, dynamic>{
      'contentid': instance.contentid,
      'contenttypeid': instance.contenttypeid,
      'title': instance.title,
      'firstimage': instance.firstimage,
    };
