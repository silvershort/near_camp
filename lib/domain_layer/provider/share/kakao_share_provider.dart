import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';
import 'package:near_camp/domain_layer/model/share/share_model.dart';

final kakaoShareProvider = FutureProvider.family.autoDispose<Uri, ShareModel>((ref, shareModel) async {
  Map<String, String> params = {'path': shareModel.path, 'pathParam': shareModel.pathParam};

  // 템플릿 양식 만들기
  final FeedTemplate defaultFeed = FeedTemplate(
    content: Content(
      title: shareModel.metaTag.title ?? tr('app_name'),
      description: shareModel.metaTag.description ?? tr('share_description'),
      imageUrl: shareModel.metaTag.imageUrl ?? Uri.parse(''),
      link: Link(
        androidExecutionParams: params,
        iosExecutionParams: params,
      ),
    ),
    buttons: [
      Button(
        title: tr('share_button'),
        link: Link(
          androidExecutionParams: params,
          iosExecutionParams: params,
        ),
      ),
    ],
  );

  // 카카오톡 설치 유무
  if (await ShareClient.instance.isKakaoTalkSharingAvailable()) {
    try {
      return await ShareClient.instance.shareDefault(template: defaultFeed);
    } catch (error, stackTrace) {
      return Future.error(error, stackTrace);
    }
  } else {
    try {
      Uri shareUrl = await WebSharerClient.instance.makeDefaultUrl(template: defaultFeed);
      return Uri.parse(await launchBrowserTab(shareUrl, popupOpen: true));
    } catch (error, stackTrace) {
      return Future.error(error, stackTrace);
    }
  }
});
