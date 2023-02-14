// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyDto<T> _$BodyDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BodyDto<T>(
      numOfRows: json['numOfRows'] as int,
      pageNo: json['pageNo'] as int,
      totalCount: json['totalCount'] as int,
      items: ItemsDto<T>.fromJson(
          json['items'] as Map<String, dynamic>, (value) => fromJsonT(value)),
    );

Map<String, dynamic> _$BodyDtoToJson<T>(
  BodyDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'numOfRows': instance.numOfRows,
      'pageNo': instance.pageNo,
      'totalCount': instance.totalCount,
      'items': instance.items,
    };

ItemsDto<T> _$ItemsDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ItemsDto<T>(
      item: (json['item'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ItemsDtoToJson<T>(
  ItemsDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'item': instance.item.map(toJsonT).toList(),
    };
