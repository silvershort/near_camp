import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/domain_layer/model/sqfLite/favorites_model.dart';
import 'package:near_camp/domain_layer/provider/sqfLite/favorites_provider.dart';
import 'package:near_camp/presentation_layer/component/tour/favorites_toggle_button.dart';
import 'package:near_camp/router/route_name.dart';
import 'package:near_camp/router/route_param.dart';

class FavoriteListTile extends ConsumerWidget {
  const FavoriteListTile({
    Key? key,
    required this.item,
  }) : super(key: key);
  final FavoritesModel item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          context.pushNamed(RouteName.tourDetail, params: {
            RouteParam.tourDetailParam1 : item.contentid,
            RouteParam.tourDetailParam2 : item.contenttypeid,
          });
        },
        child: Row(
          children: [
            ExtendedImage(
              width: 50,
              height: 50,
              image: ExtendedResizeImage(
                ExtendedNetworkImageProvider(
                  item.firstimage ?? '',
                  scale: 0.5,
                  cache: true,
                ),
              ),
              fit: BoxFit.cover,
              shape: BoxShape.circle,
              loadStateChanged: (state) {
                if (state.extendedImageLoadState == LoadState.failed) {
                  return ExtendedImage.asset(
                    'assets/images/tour/no-thumbnail.png',
                    color: Colors.black26,
                    colorBlendMode: BlendMode.multiply,
                    fit: BoxFit.cover,
                  );
                }
              },
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Text(
                item.title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(width: 10.0),
            FavoritesToggleButton(
              key: UniqueKey(),
              isSelected: ref.read(favoriteProvider.notifier).existItem(item),
              onSelected: () => ref.read(favoriteProvider.notifier).addFavorites(item),
              onUnSelected: () => ref.read(favoriteProvider.notifier).deleteFavorites(item.contentid),
            ),
          ],
        ),
      ),
    );
  }
}
