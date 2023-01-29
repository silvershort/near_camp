import 'package:json_annotation/json_annotation.dart';

part 'client_info_dto.g.dart';

@JsonSerializable()
class ClientInfoDto {
  final String mobileOS;
  final String mobileApp;
  final String serviceKey;

  const ClientInfoDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'MobileOS')
    required this.mobileOS,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'MobileApp')
    required this.mobileApp,
    required this.serviceKey,
  });

  factory ClientInfoDto.fromJson(Map<String, dynamic> json)
    => _$ClientInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClientInfoDtoToJson(this);
}