import 'package:json_annotation/json_annotation.dart';

part 'detail_information_dto.g.dart';

@JsonSerializable()
class DetailInfoDto {
  final String contentId;
  final String contentTypeId;

  DetailInfoDto({
    required this.contentId,
    required this.contentTypeId,
  });

  factory DetailInfoDto.fromJson(Map<String, dynamic> json) => _$DetailInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DetailInfoDtoToJson(this);
}
