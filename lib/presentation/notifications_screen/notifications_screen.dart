import 'controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:wewo/core/app_export.dart';
import 'package:wewo/widgets/custom_icon_button.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Container(
                          height: getVerticalSize(167.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1),
                          child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgMain19,
                                        height: getVerticalSize(167.00),
                                        width: getHorizontalSize(374.00))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        decoration: AppDecoration
                                            .gradientGray5099WhiteA70099,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: size.width,
                                                  margin: getMargin(top: 3),
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 16, right: 187),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                                padding: getPadding(
                                                                    bottom: 1),
                                                                child: InkWell(
                                                                    onTap: () {
                                                                      onTapImgArrowleft();
                                                                    },
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowleft,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 4),
                                                                child: Text(
                                                                    "lbl_notifications"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold20))
                                                          ]))),
                                              Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                      left: 15,
                                                      top: 36,
                                                      right: 15,
                                                      bottom: 8),
                                                  decoration: AppDecoration
                                                      .fillLightgreenA7002b
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 16,
                                                                right: 20),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                      "lbl_order_345"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsMedium16
                                                                          .copyWith(
                                                                              letterSpacing: 0.60)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              4),
                                                                      child: Text(
                                                                          "lbl_3_57_pm"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular11))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 4,
                                                                right: 20,
                                                                bottom: 18),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          218.00),
                                                                      margin: getMargin(
                                                                          top:
                                                                              4),
                                                                      child: Text(
                                                                          "msg_your_order_is_c2"
                                                                              .tr,
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular14)),
                                                                  CustomIconButton(
                                                                      height:
                                                                          36,
                                                                      width: 36,
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              3),
                                                                      variant:
                                                                          IconButtonVariant
                                                                              .FillYellow900,
                                                                      shape: IconButtonShape
                                                                          .CircleBorder18,
                                                                      padding:
                                                                          IconButtonPadding
                                                                              .PaddingAll10,
                                                                      child: CommonImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgMenu36X36))
                                                                ]))
                                                      ]))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 23, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_order_345".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16
                                        .copyWith(letterSpacing: 0.60)),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 4),
                                    child: Text("lbl_2_33_pm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular11))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 4, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(214.00),
                                    margin: getMargin(top: 4),
                                    child: Text("msg_your_order_is_d".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular14)),
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    margin: getMargin(bottom: 1),
                                    variant: IconButtonVariant.FillTeal400,
                                    shape: IconButtonShape.CircleBorder18,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgCall))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(left: 16, top: 21, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 16, top: 31, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_order_345".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16
                                        .copyWith(letterSpacing: 0.60)),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 4),
                                    child: Text("lbl_4_12_am".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular11))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 4, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(218.00),
                                    margin: getMargin(top: 4),
                                    child: Text("msg_your_order_is_c2".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular14)),
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    margin: getMargin(bottom: 3),
                                    variant: IconButtonVariant.FillRedA200,
                                    shape: IconButtonShape.CircleBorder18,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgMenu36X36))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(left: 16, top: 18, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 16, top: 31, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_order_345".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16
                                        .copyWith(letterSpacing: 0.60)),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 4),
                                    child: Text("lbl_12_07_am".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular11))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 4, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(223.00),
                                    margin: getMargin(top: 4),
                                    child: Text("msg_your_order_is_c3".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular14)),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(bottom: 3),
                                    color: ColorConstant.lightGreenA700,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder18),
                                    child: Container(
                                        height: getSize(36.00),
                                        width: getSize(36.00),
                                        decoration: AppDecoration
                                            .fillLightgreenA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder18),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 9,
                                                          top: 10,
                                                          right: 10,
                                                          bottom: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar,
                                                          height:
                                                              getSize(17.00),
                                                          width:
                                                              getSize(17.00)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 9,
                                                          top: 10,
                                                          right: 10,
                                                          bottom: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar17X17,
                                                          height:
                                                              getSize(17.00),
                                                          width:
                                                              getSize(17.00))))
                                            ])))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(left: 16, top: 18, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Container(
                          height: getVerticalSize(274.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1, top: 1),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(top: 10),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgMain110,
                                        height: getVerticalSize(151.00),
                                        width: getHorizontalSize(374.00)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    decoration: AppDecoration.fillWhiteA7008c,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 15, top: 30, right: 15),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text("lbl_order_345".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.60)),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 4),
                                                        child: Text(
                                                            "lbl_11_01_am".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular11))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 15, top: 4, right: 15),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                218.00),
                                                        margin:
                                                            getMargin(top: 4),
                                                        child: Text(
                                                            "msg_your_order_is_c2"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular14)),
                                                    CustomIconButton(
                                                        height: 36,
                                                        width: 36,
                                                        margin: getMargin(
                                                            bottom: 3),
                                                        variant:
                                                            IconButtonVariant
                                                                .FillRedA200,
                                                        shape: IconButtonShape
                                                            .CircleBorder18,
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgMenu36X36))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(1.00),
                                              width: getHorizontalSize(343.00),
                                              margin: getMargin(
                                                  left: 15,
                                                  top: 18,
                                                  right: 15,
                                                  bottom: 164),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray300))
                                        ])))
                          ]))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
