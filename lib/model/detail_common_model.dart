import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_common_model.freezed.dart';

part 'detail_common_model.g.dart';

@freezed
class DetailCommonModel with _$DetailCommonModel {
  const factory DetailCommonModel({
    required String contentid,
    required String contenttypeid,
    required String title,
    required String createdtime,
    required String modifiedtime,
    required String booktour,
    required String homepage,
    required String tel,
    required String telname,
    String? firstimage,
    String? firstimage2,
    String? areacode,
    String? sigungucode,
    String? cat1,
    String? cat2,
    String? cat3,
    String? addr1,
    String? addr2,
    String? zipcode,
    String? mapx,
    String? mapy,
    String? mlevel,
    String? overview,
  }) = _DetailCommonModel;

  factory DetailCommonModel.fromJson(Map<String, dynamic> json) => _$DetailCommonModelFromJson(json);
}
