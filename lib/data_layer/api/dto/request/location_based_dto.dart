import 'package:json_annotation/json_annotation.dart';
import 'package:near_camp/const/api_const.dart';

part 'location_based_dto.g.dart';

@JsonSerializable()
class LocationBasedDto {
  /// GPS X좌표(WGS84 경도좌표)
  final String mapX;

  /// GPS Y좌표(WGS84 위도좌표)
  final String mapY;

  /// 거리반경(단위:m) , Max값 20000m=20Km
  final String radius;
  final String? listYN;
  final String? arrange;
  final String? contentTypeId;
  final String? modifiedtime;

  const LocationBasedDto({
    required this.mapX,
    required this.mapY,
    required this.radius,
    this.listYN = 'Y',
    this.arrange = ApiConst.defaultArrange,
    this.contentTypeId,
    this.modifiedtime,
  });

  factory LocationBasedDto.fromJson(Map<String, dynamic> json) => _$LocationBasedDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LocationBasedDtoToJson(this);
}
