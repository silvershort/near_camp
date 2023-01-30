import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_common_model.freezed.dart';

part 'detail_common_model.g.dart';

@freezed
class DetailCommonModel with _$DetailCommonModel {
  const factory DetailCommonModel({
    required String contenttypeid,
    required String booktour,
    required String createdtime,
    required String homepage,
    required String modifiedtime,
    required String tel,
    required String telname,
    required String title,
    required String firstimage,
    required String firstimage2,
    required String areacode,
    required String sigungucode,
    required String cat1,
    required String cat2,
    required String cat3,
    required String addr1,
    required String addr2,
    required String zipcode,
    required String mapx,
    required String mapy,
    required String mlevel,
    required String overview,
    required String contenti,
  }) = _DetailCommonModel;

  factory DetailCommonModel.fromJson(Map<String, dynamic> json) => _$DetailCommonModelFromJson(json);
}
