import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_based_model.freezed.dart';

part 'location_based_model.g.dart';

@freezed
class LocationBasedModel with _$LocationBasedModel {
  const factory LocationBasedModel({
    required String addr1,
    required String contenttypeid,
    required String createdtime,
    required String dist,
    required String firstimage,
    required String firstimage2,
    required String mapx,
    required String mapy,
    required String mlevel,
    required String modifiedtime,
    required int readcount,
    required String sigungucode,
    required String tel,
    required String title,
    required String cat1,
    required String cat2,
    required String cat3,
    required String contentid,
    required String addr2,
    required String areacode,
    String? booktou,
  }) = _LocationBasedModel;

  factory LocationBasedModel.fromJson(Map<String, dynamic> json) => _$LocationBasedModelFromJson(json);
}
