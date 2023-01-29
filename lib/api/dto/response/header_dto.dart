import 'package:json_annotation/json_annotation.dart';

part 'header_dto.g.dart';

@JsonSerializable()
class HeaderDto {
  final String resultCode;
  final String resultMsg;

  HeaderDto({
    required this.resultCode,
    required this.resultMsg,
  });

  factory HeaderDto.fromJson(Map<String, dynamic> json)
    => _$HeaderDtoFromJson(json);
}