import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';

class BottomSheetWidget extends StatelessWidget {
  final Widget child;
  final String title;
  const BottomSheetWidget({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      maxChildSize: 0.95,
      initialChildSize: 0.85,
      builder: (context, controller) {
        return SingleChildScrollView(
          controller: controller,
          child: Column(
            children: <Widget>[
              _buildTopDecoration(),
              Container(
                width: double.infinity,
                height: 92.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    _buildHeader(context, title),
                    const Divider(),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: controller,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 1.h),
                          child: child,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  _buildHeader(context, String title) {
    return Padding(
      padding: EdgeInsets.only(top: 4.w, right: 4.w, left: 4.w, bottom: 0.5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
              onTap: () => Get.back(), child: Icon(Icons.close, size: 20.sp)),
          Text(
            title,
            style: AppTextStyle.semiBoldStyle,
          ),
          SizedBox(width: 6.w),
        ],
      ),
    );
  }

  _buildTopDecoration() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 1.h,
        bottom: 1.h,
      ),
      height: 1.h,
      width: 16.w,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
