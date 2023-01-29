import 'package:json_annotation/json_annotation.dart';
import 'package:near_camp/api/dto/response/body_dto.dart';
import 'package:near_camp/api/dto/response/header_dto.dart';

part 'response_dto.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseDto<T> {
  final HeaderDto header;
  final BodyDto<T> body;

  ResponseDto({
    required this.header,
    required this.body,
  });

  factory ResponseDto.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT)
    => _$ResponseDtoFromJson(json, fromJsonT);
}