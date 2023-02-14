import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:near_camp/const/app_const.dart';
import 'package:near_camp/domain_layer/model/share/share_model.dart';

final shortLinkShareProvider = FutureProvider.family.autoDispose<String, ShareModel>((ref, shareModel) async {
  const String path = AppConst.shareUrl;
  final DynamicLinkParameters dynamicLinkParams = DynamicLinkParameters(
    link: Uri.parse(path),
    uriPrefix: AppConst.shareUrl,
    androidParameters: const AndroidParameters(
      packageName: AppConst.packageName,
    ),
    iosParameters: const IOSParameters(
      bundleId: AppConst.bundleId,
    ),
    socialMetaTagParameters: shareModel.metaTag,
  );
  final dynamicLink = await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);
  return dynamicLink.shortUrl.toString();
});