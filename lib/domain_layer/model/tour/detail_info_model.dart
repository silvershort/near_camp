import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_info_model.g.dart';

part 'detail_info_model.freezed.dart';

@freezed
class DetailInfoModel with _$DetailInfoModel {
  const factory DetailInfoModel({
  required String roomimg5,
  required String roomimg5alt,
  required String contentid,
  required String contenttypeid,
  required String fldgubun,
  required String infoname,
  required String infotext,
  required String serialnum,
  required String subcontentid,
  required String subdetailalt,
  required String subdetailimg,
  required String subdetailoverview,
  required String subname,
  required String subnum,
  required String roomcode,
  required String roomtitle,
  required String roomsize1,
  required String roomcount,
  required String roombasecount,
  required String roommaxcount,
  required String roomoffseasonminfee1,
  required String roomoffseasonminfee2,
  required String roompeakseasonminfee1,
  required String roompeakseasonminfee2,
  required String roomintro,
  required String roombathfacility,
  required String roombath,
  required String roomhometheater,
  required String roomaircondition,
  required String roomtv,
  required String roompc,
  required String roomcable,
  required String roominternet,
  required String roomrefrigerator,
  required String roomtoiletries,
  required String roomsofa,
  required String roomcook,
  required String roomtable,
  required String roomhairdryer,
  required String roomsize2,
  required String roomimg1,
  required String roomimg1alt,
  required String roomimg2,
  required String roomimg2alt,
  required String roomimg3,
  required String roomimg4alt,
  required String roomimg3alt,
  required String roomimg,
}) = _DetailInfoModel;

  factory DetailInfoModel.fromJson(Map<String, dynamic> json) => _$DetailInfoModelFromJson(json);
}
