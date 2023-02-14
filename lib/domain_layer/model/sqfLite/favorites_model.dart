import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:near_camp/domain_layer/model/tour/detail_common_model.dart';

part 'favorites_model.freezed.dart';

part 'favorites_model.g.dart';

@freezed
class FavoritesModel with _$FavoritesModel {
  const factory FavoritesModel({
    required String contentid,
    required String contenttypeid,
    required String title,
    String? firstimage,
  }) = _FavoritesModel;

  factory FavoritesModel.fromJson(Map<String, dynamic> json) => _$FavoritesModelFromJson(json);

  factory FavoritesModel.fromDetail(DetailCommonModel detailCommonModel) {
    return FavoritesModel(
      contentid: detailCommonModel.contentid,
      contenttypeid: detailCommonModel.contenttypeid,
      title: detailCommonModel.title,
      firstimage: detailCommonModel.firstimage,
    );
  }
}
