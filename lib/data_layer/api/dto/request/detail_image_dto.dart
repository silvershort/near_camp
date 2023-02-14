import 'package:json_annotation/json_annotation.dart';

part 'detail_image_dto.g.dart';

@JsonSerializable()
class DetailImageDto {
  final String contentId;
  final String? imageYN;
  final String? subImageYN;

  DetailImageDto({
    required this.contentId,
    this.imageYN = 'Y',
    this.subImageYN = 'Y',
  });

  factory DetailImageDto.fromJson(Map<String, dynamic> json) => _$DetailImageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DetailImageDtoToJson(this);
}
