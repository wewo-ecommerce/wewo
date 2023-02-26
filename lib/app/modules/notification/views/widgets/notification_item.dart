import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/data/models/notification_model.dart';

import '../../../../data/models/notification_item_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItem notifications;
  final double width;
  final double height;

  const NotificationItemWidget({
    Key? key,
    required this.notifications,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //elevation: 2,
      //borderOnForeground: false,
      //shadowColor: Colors.white,
      /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),*/
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 0.0, height: 1.h),
          Container(
            padding: EdgeInsets.all(15.sp),
            child: SizedBox(
              width: width,
              height: height,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    notifications.imageUrl,
                    fit: BoxFit.cover,
                    width: 4.w,
                    height: 4.h,
                    //placeholder: (context, url) => const Placeholder(),
                    //errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                  SizedBox(width: 5.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notifications.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                        width: 75.w,
                        child: Text(
                          notifications.description,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 12.sp,
                            overflow: TextOverflow.ellipsis
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        notifications.createdAt,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          //SizedBox(width: 0.0, height: 1.h),
          //_buildBottomBarItem(),
        ],
      ),
    );
  }
}
