import 'package:json_annotation/json_annotation.dart';

part 'detail_common_dto.g.dart';

@JsonSerializable()
class DetailCommonDto {
  final String contentId;
  final String? contentTypeId;
  final String? defaultYN;
  final String? firstImageYN;
  final String? areacodeYN;
  final String? catcodeYN;
  final String? addrinfoYN;
  final String? mapinfoYN;
  final String? overviewYN;

  DetailCommonDto({
    required this.contentId,
    this.contentTypeId,
    this.defaultYN = 'Y',
    this.firstImageYN = 'Y',
    this.areacodeYN,
    this.catcodeYN,
    this.addrinfoYN,
    this.mapinfoYN,
    this.overviewYN,
  });

  factory DetailCommonDto.fromJson(Map<String, dynamic> json) => _$DetailCommonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DetailCommonDtoToJson(this);
}
