import 'package:json_annotation/json_annotation.dart';
import 'package:near_camp/api/dto/response/response_dto.dart';

part 'api_result_dto.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResultDto<T> {
  final ResponseDto<T> response;

  const ApiResultDto({
    required this.response,
  });

  factory ApiResultDto.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResultDtoFromJson(json, fromJsonT);
}