import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_model.freezed.dart';

@freezed
class ShareModel with _$ShareModel {
  const factory ShareModel({
    required String path,
    required String pathParam,
    required SocialMetaTagParameters metaTag,
  }) = _ShareModel;
}
