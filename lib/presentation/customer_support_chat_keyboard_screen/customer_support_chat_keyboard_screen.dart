import 'controller/customer_support_chat_keyboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:wewo/core/app_export.dart';
import 'package:wewo/widgets/custom_icon_button.dart';

class CustomerSupportChatKeyboardScreen
    extends GetWidget<CustomerSupportChatKeyboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(780.00),
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(left: 1),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(180.00),
                                                width:
                                                    getHorizontalSize(374.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgMain144,
                                                              height:
                                                                  getVerticalSize(
                                                                      180.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      374.00))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .gradientGray5099WhiteA70099,
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: size
                                                                            .width,
                                                                        margin: getMargin(
                                                                            top:
                                                                                16),
                                                                        child: Padding(
                                                                            padding: getPadding(left: 17, right: 17),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                              Padding(
                                                                                  padding: getPadding(bottom: 16),
                                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                                    Padding(
                                                                                        padding: getPadding(bottom: 1),
                                                                                        child: InkWell(
                                                                                            onTap: () {
                                                                                              onTapImgArrowleft();
                                                                                            },
                                                                                            child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24.00), width: getSize(24.00)))),
                                                                                    Padding(padding: getPadding(left: 18, top: 4), child: Text("lbl_chat_with_us".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold20))
                                                                                  ])),
                                                                              Padding(padding: getPadding(top: 16), child: CommonImageView(svgPath: ImageConstant.imgUser24X24, height: getSize(24.00), width: getSize(24.00)))
                                                                            ]))),
                                                                    Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                20,
                                                                            right:
                                                                                15,
                                                                            bottom:
                                                                                17),
                                                                        decoration: AppDecoration.fillYellow90023.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder12),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                              CustomIconButton(height: 44, width: 44, margin: getMargin(left: 15, top: 20, bottom: 22), variant: IconButtonVariant.FillYellow900, padding: IconButtonPadding.PaddingAll10, child: CommonImageView(svgPath: ImageConstant.imgActionshopping)),
                                                                              Padding(
                                                                                  padding: getPadding(left: 17, top: 13, bottom: 13),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Padding(padding: getPadding(right: 10), child: Text("lbl_order_345".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium16.copyWith(letterSpacing: 0.60))),
                                                                                    Container(
                                                                                        width: getHorizontalSize(248.00),
                                                                                        margin: getMargin(top: 2),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [
                                                                                          Padding(padding: getPadding(top: 5, bottom: 2), child: Text("lbl_delivered".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium12)),
                                                                                          Text("lbl_700".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold20Yellow900)
                                                                                        ])),
                                                                                    Padding(padding: getPadding(top: 6, right: 10), child: Text("msg_october_14_201".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12Bluegray800b7))
                                                                                  ]))
                                                                            ]))
                                                                  ])))
                                                    ])),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 15,
                                                        top: 9,
                                                        right: 15),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          81),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              21.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse2,
                                                                      height: getSize(
                                                                          42.00),
                                                                      width: getSize(
                                                                          42.00),
                                                                      fit: BoxFit
                                                                          .cover))),
                                                          Container(
                                                              decoration: AppDecoration
                                                                  .fillLightgreenA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder9),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Container(
                                                                            width: getHorizontalSize(
                                                                                227.00),
                                                                            margin: getMargin(
                                                                                left: 19,
                                                                                top: 19,
                                                                                right: 19,
                                                                                bottom: 14),
                                                                            child: Text("msg_nostrud_aliquip".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16WhiteA700.copyWith(letterSpacing: 0.44))))
                                                                  ]))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    width: double.infinity,
                                                    margin: getMargin(
                                                        left: 19,
                                                        top: 15,
                                                        right: 19),
                                                    decoration: AppDecoration
                                                        .fillBlue700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder9),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          227.00),
                                                                  margin: getMargin(
                                                                      left: 19,
                                                                      top: 17,
                                                                      right: 19,
                                                                      bottom:
                                                                          12),
                                                                  child: Text(
                                                                      "msg_nostrud_aliquip2"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsRegular16WhiteA700
                                                                          .copyWith(
                                                                              letterSpacing: 0.44))))
                                                        ]))),
                                            Container(
                                                height: getVerticalSize(274.00),
                                                width:
                                                    getHorizontalSize(374.00),
                                                margin: getMargin(top: 107),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 10),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMain145,
                                                                  height:
                                                                      getVerticalSize(
                                                                          151.00),
                                                                  width: getHorizontalSize(
                                                                      374.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle167,
                                                              height:
                                                                  getVerticalSize(
                                                                      274.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      374.00)))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                      margin: getMargin(top: 283, bottom: 283),
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 19,
                                                    right: 16),
                                                decoration: AppDecoration
                                                    .fillBluegray50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20,
                                                              top: 9,
                                                              bottom: 9),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_write_message"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular12LightgreenA700a9))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 2,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_johndoe"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular16Bluegray800
                                                                            .copyWith(letterSpacing: 0.44)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 13,
                                                              right: 17,
                                                              bottom: 12),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVideocamera29X29,
                                                                    height:
                                                                        getSize(
                                                                            29.00),
                                                                    width: getSize(
                                                                        29.00)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 2,
                                                                        bottom:
                                                                            3),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgBookmark,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            22,
                                                                        top: 2,
                                                                        bottom:
                                                                            3),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgSend24X24,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00)))
                                                              ]))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(340.00),
                                                margin: getMargin(
                                                    left: 16,
                                                    right: 16,
                                                    bottom: 24),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .lightGreenA700))
                                          ])))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
