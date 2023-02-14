import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_image_model.g.dart';

part 'detail_image_model.freezed.dart';

@freezed
class DetailImageModel with _$DetailImageModel {
  const factory DetailImageModel({
    required String contentid,
    required String imgname,
    required String originimgurl,
    required String serialnum,
    required String smallimageur,
  }) = _DetailImageModel;

  factory DetailImageModel.fromJson(Map<String, dynamic> json) => _$DetailImageModelFromJson(json);
}
