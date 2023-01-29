import 'package:json_annotation/json_annotation.dart';

part 'body_dto.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BodyDto<T> {
  final int numOfRows;
  final int pageNo;
  final int totalCount;
  final ItemsDto<T> items;

  BodyDto({
    required this.numOfRows,
    required this.pageNo,
    required this.totalCount,
    required this.items,
  });

  factory BodyDto.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$BodyDtoFromJson(json, fromJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class ItemsDto<T> {
  final List<T> item;

  const ItemsDto({
    required this.item,
  });

  factory ItemsDto.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ItemsDtoFromJson(json, fromJsonT);
}