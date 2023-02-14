import 'package:json_annotation/json_annotation.dart';

part 'pagination_dto.g.dart';

@JsonSerializable()
class PaginationDto {
  final int numOfRows;
  final int pageNo;

  const PaginationDto({
    required this.numOfRows,
    required this.pageNo,
  });

  factory PaginationDto.fromJson(Map<String, dynamic> json)
    => _$PaginationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationDtoToJson(this);
}