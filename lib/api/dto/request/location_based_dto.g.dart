// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_based_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationBasedDto _$LocationBasedDtoFromJson(Map<String, dynamic> json) =>
    LocationBasedDto(
      mapX: json['mapX'] as String,
      mapY: json['mapY'] as String,
      radius: json['radius'] as String,
      listYN: json['listYN'] as String? ?? 'Y',
      arrange: json['arrange'] as String? ?? ApiConst.defaultArrange,
      contentTypeId: json['contentTypeId'] as String?,
      modifiedtime: json['modifiedtime'] as String?,
    );

Map<String, dynamic> _$LocationBasedDtoToJson(LocationBasedDto instance) =>
    <String, dynamic>{
      'mapX': instance.mapX,
      'mapY': instance.mapY,
      'radius': instance.radius,
      'listYN': instance.listYN,
      'arrange': instance.arrange,
      'contentTypeId': instance.contentTypeId,
      'modifiedtime': instance.modifiedtime,
    };
