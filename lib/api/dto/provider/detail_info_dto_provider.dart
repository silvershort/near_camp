import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/api/dto/request/detail_information_dto.dart';

final detailInfoDtoProvider = NotifierProvider<DetailInfoDtoNotifier, DetailInformationDto>(DetailInfoDtoNotifier.new);

class DetailInfoDtoNotifier extends Notifier<DetailInformationDto> {
  @override
  DetailInformationDto build() {
    return state;
  }

  void setDetailInfoDto(DetailInformationDto dto) {
    state = dto;
  }
}