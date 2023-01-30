// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailImageDto _$DetailImageDtoFromJson(Map<String, dynamic> json) =>
    DetailImageDto(
      contentId: json['contentId'] as String,
      imageYN: json['imageYN'] as String? ?? 'Y',
      subImageYN: json['subImageYN'] as String? ?? 'Y',
    );

Map<String, dynamic> _$DetailImageDtoToJson(DetailImageDto instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'imageYN': instance.imageYN,
      'subImageYN': instance.subImageYN,
    };
