import 'controller/my_addresses_controller.dart';
import 'package:flutter/material.dart';
import 'package:wewo/core/app_export.dart';
import 'package:wewo/widgets/custom_icon_button.dart';
import 'package:wewo/widgets/custom_text_form_field.dart';

class MyAddressesScreen extends GetWidget<MyAddressesController> {
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
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CommonImageView(
                                    imagePath: ImageConstant.imgMain117,
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
                                                      left: 17, right: 175),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 6),
                                                            child: InkWell(
                                                                onTap: () {
                                                                  onTapImgArrowleft();
                                                                },
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleft,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 18,
                                                                top: 7),
                                                            child: Text(
                                                                "lbl_my_addresses"
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
                                          Padding(
                                              padding: getPadding(
                                                  left: 15, top: 48, right: 15),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_home".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium16
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.60))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 5),
                                                              child: Text(
                                                                  "msg_51_5a_road_7"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular14))
                                                        ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 1),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              CustomIconButton(
                                                                  height: 36,
                                                                  width: 36,
                                                                  variant:
                                                                      IconButtonVariant
                                                                          .FillYellow900,
                                                                  shape: IconButtonShape
                                                                      .CircleBorder18,
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgEdit)),
                                                              CustomIconButton(
                                                                  height: 36,
                                                                  width: 36,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              19),
                                                                  variant:
                                                                      IconButtonVariant
                                                                          .FillRedA200,
                                                                  shape: IconButtonShape
                                                                      .CircleBorder18,
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgActionDeleteoutline24px))
                                                            ]))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(1.00),
                                              width: getHorizontalSize(343.00),
                                              margin: getMargin(
                                                  left: 15,
                                                  top: 24,
                                                  right: 15,
                                                  bottom: 21),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray300))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(right: 10),
                                          child: Text("lbl_work".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsMedium16
                                                  .copyWith(
                                                      letterSpacing: 0.60))),
                                      Padding(
                                          padding: getPadding(top: 10),
                                          child: Text("msg_dingi_technolog".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular14))
                                    ]),
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    margin: getMargin(top: 1, bottom: 2),
                                    variant: IconButtonVariant.FillYellow900,
                                    shape: IconButtonShape.CircleBorder18,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgEdit)),
                                CustomIconButton(
                                    height: 36,
                                    width: 36,
                                    margin: getMargin(top: 1, bottom: 2),
                                    variant: IconButtonVariant.FillRedA200,
                                    shape: IconButtonShape.CircleBorder18,
                                    child: CommonImageView(
                                        svgPath: ImageConstant
                                            .imgActionDeleteoutline24px))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(343.00),
                          margin: getMargin(left: 16, top: 23, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Container(
                          height: getVerticalSize(274.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1, top: 261),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(top: 10),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgMain118,
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
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomTextFormField(
                                              width: 343,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .buttonsmobileController,
                                              hintText:
                                                  "lbl_add_new_address".tr,
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 192,
                                                  right: 15,
                                                  bottom: 34),
                                              textInputAction:
                                                  TextInputAction.done,
                                              suffix: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 12,
                                                      right: 16,
                                                      bottom: 12),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlus)),
                                              suffixConstraints: BoxConstraints(
                                                  minWidth:
                                                      getHorizontalSize(24.00),
                                                  minHeight:
                                                      getVerticalSize(24.00)))
                                        ])))
                          ]))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
