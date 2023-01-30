// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientInfoDto _$ClientInfoDtoFromJson(Map<String, dynamic> json) =>
    ClientInfoDto(
      mobileOS: json['MobileOS'] as String,
      mobileApp: json['MobileApp'] as String,
      serviceKey: json['serviceKey'] as String,
      type: json['_type'] as String? ?? 'json',
    );

Map<String, dynamic> _$ClientInfoDtoToJson(ClientInfoDto instance) =>
    <String, dynamic>{
      'MobileOS': instance.mobileOS,
      'MobileApp': instance.mobileApp,
      'serviceKey': instance.serviceKey,
      '_type': instance.type,
    };
