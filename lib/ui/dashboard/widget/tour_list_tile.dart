import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/model/location_based_model.dart';
import 'package:near_camp/router/route_name.dart';
import 'package:near_camp/router/route_param.dart';
import 'package:near_camp/util/string_extension.dart';

class TourListTile extends StatelessWidget {
  const TourListTile({
    Key? key,
    required this.item,
  }) : super(key: key);
  final LocationBasedModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(RouteName.tourDetail, params: {
          RouteParam.tourDetailParam1 : item.contentid,
          RouteParam.tourDetailParam2 : item.contenttypeid,
        });
      },
      child: Stack(
        children: [
          ExtendedImage.network(
            item.firstimage,
            width: MediaQuery.of(context).size.width,
            height: 180,
            color: Colors.black45,
            colorBlendMode: BlendMode.multiply,
            fit: BoxFit.cover,
            cache: true,
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
          Positioned(
            top: 10,
            left: 15,
            child: Text(
              item.title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 15,
            child: Text(
              item.dist.convertDistance,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
