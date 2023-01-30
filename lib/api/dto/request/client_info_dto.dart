import 'package:json_annotation/json_annotation.dart';

part 'client_info_dto.g.dart';

@JsonSerializable()
class ClientInfoDto {
  @JsonKey(name: 'MobileOS')
  final String mobileOS;
  @JsonKey(name: 'MobileApp')
  final String mobileApp;
  final String serviceKey;
  @JsonKey(name: '_type')
  final String type;

  const ClientInfoDto({
    required this.mobileOS,
    required this.mobileApp,
    required this.serviceKey,
    this.type = 'json',
  });

  factory ClientInfoDto.fromJson(Map<String, dynamic> json)
    => _$ClientInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClientInfoDtoToJson(this);
}