import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_wewo/app/common/util/exports.dart';

import '../../../../data/models/notification_model.dart';
import 'notification_type_item.dart';

class NotificationType extends StatelessWidget {
  final String title;
  final String imageUrl;

  const NotificationType({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 0.0, height: 1.h),
        Container(
          padding: EdgeInsets.all(15.sp),
          child: SizedBox(
            //width: 18.w,
            //height: 18.h,
            child: SvgPicture.asset(
              imageUrl,
              //fit: BoxFit.cover,
              width: 4.w,
              height: 4.h,
              //placeholder: (context, url) => const Placeholder(),
              //errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
