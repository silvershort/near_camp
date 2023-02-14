import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:near_camp/domain_layer/model/tour/location_based_model.dart';
import 'package:near_camp/presentation_layer/component/tour/default_network_image.dart';
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
        context.pushNamed(RouteName.tourDetail, params: {
          RouteParam.tourDetailParam1: item.contentid,
          RouteParam.tourDetailParam2: item.contenttypeid,
        });
      },
      child: Stack(
        children: [
          DefaultNetworkImage(
            url: item.firstimage,
            width: MediaQuery.of(context).size.width,
            height: 180,
            darken: true,
          ),
          Positioned(
            top: 10,
            left: 15,
            right: 15,
            child: Row(
              children: [
                Text(
                  item.contenttypeid.convertContentType,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Text(
                    item.title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
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
