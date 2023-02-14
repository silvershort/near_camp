import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_common_dto.g.dart';

part 'detail_common_dto.freezed.dart';

@freezed
class DetailCommonDto with _$DetailCommonDto {
  const factory DetailCommonDto({
    required String contentId,
    String? contentTypeId,
    @Default('Y')
    String? defaultYN,
    @Default('Y')
    String? firstImageYN,
    @Default('Y')
    String? areacodeYN,
    @Default('Y')
    String? catcodeYN,
    @Default('Y')
    String? addrinfoYN,
    @Default('Y')
    String? mapinfoYN,
    @Default('Y')
    String? overviewYN,
  }) = _DetailCommonDto;

  factory DetailCommonDto.fromJson(Map<String, dynamic> json) => _$DetailCommonDtoFromJson(json);
}
