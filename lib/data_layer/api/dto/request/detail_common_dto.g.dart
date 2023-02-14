// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_common_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailCommonDto _$$_DetailCommonDtoFromJson(Map<String, dynamic> json) =>
    _$_DetailCommonDto(
      contentId: json['contentId'] as String,
      contentTypeId: json['contentTypeId'] as String?,
      defaultYN: json['defaultYN'] as String? ?? 'Y',
      firstImageYN: json['firstImageYN'] as String? ?? 'Y',
      areacodeYN: json['areacodeYN'] as String? ?? 'Y',
      catcodeYN: json['catcodeYN'] as String? ?? 'Y',
      addrinfoYN: json['addrinfoYN'] as String? ?? 'Y',
      mapinfoYN: json['mapinfoYN'] as String? ?? 'Y',
      overviewYN: json['overviewYN'] as String? ?? 'Y',
    );

Map<String, dynamic> _$$_DetailCommonDtoToJson(_$_DetailCommonDto instance) =>
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
