// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_common_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailCommonDto _$DetailCommonDtoFromJson(Map<String, dynamic> json) =>
    DetailCommonDto(
      contentId: json['contentId'] as String,
      contentTypeId: json['contentTypeId'] as String?,
      defaultYN: json['defaultYN'] as String? ?? 'Y',
      firstImageYN: json['firstImageYN'] as String? ?? 'Y',
      areacodeYN: json['areacodeYN'] as String?,
      catcodeYN: json['catcodeYN'] as String?,
      addrinfoYN: json['addrinfoYN'] as String?,
      mapinfoYN: json['mapinfoYN'] as String?,
      overviewYN: json['overviewYN'] as String?,
    );

Map<String, dynamic> _$DetailCommonDtoToJson(DetailCommonDto instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'defaultYN': instance.defaultYN,
      'firstImageYN': instance.firstImageYN,
      'areacodeYN': instance.areacodeYN,
      'catcodeYN': instance.catcodeYN,
      'addrinfoYN': instance.addrinfoYN,
      'mapinfoYN': instance.mapinfoYN,
      'overviewYN': instance.overviewYN,
    };
