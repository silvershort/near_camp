import 'package:json_annotation/json_annotation.dart';

part 'detail_information_dto.g.dart';

@JsonSerializable()
class DetailInformationDto {
  final String contentId;
  final String contentTypeId;

  DetailInformationDto({
    required this.contentId,
    required this.contentTypeId,
  });

  factory DetailInformationDto.fromJson(Map<String, dynamic> json) => _$DetailInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DetailInfoDtoToJson(this);
}
