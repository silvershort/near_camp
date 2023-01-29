import 'package:json_annotation/json_annotation.dart';

part 'location_based_dto.g.dart';

@JsonSerializable()
class LocationBasedDto {
  /// GPS X좌표(WGS84 경도좌표)
  final String mapX;
  /// GPS Y좌표(WGS84 위도좌표)
  final String mapY;
  /// 거리반경(단위:m) , Max값 20000m=20Km
  final String radius;

  const LocationBasedDto({
    required this.mapX,
    required this.mapY,
    required this.radius,
  });

  factory LocationBasedDto.fromJson(Map<String, dynamic> json)
    => _$LocationBasedDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LocationBasedDtoToJson(this);
}