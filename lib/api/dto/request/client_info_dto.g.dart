// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientInfoDto _$ClientInfoDtoFromJson(Map<String, dynamic> json) =>
    ClientInfoDto(
      mobileOS: json['mobileOS'] as String,
      mobileApp: json['mobileApp'] as String,
      serviceKey: json['serviceKey'] as String,
    );

Map<String, dynamic> _$ClientInfoDtoToJson(ClientInfoDto instance) =>
    <String, dynamic>{
      'mobileOS': instance.mobileOS,
      'mobileApp': instance.mobileApp,
      'serviceKey': instance.serviceKey,
    };
