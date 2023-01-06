import 'controller/order_scheduled_expanded_controller.dart';
import 'package:flutter/material.dart';
import 'package:wewo/core/app_export.dart';
import 'package:wewo/widgets/custom_button.dart';
import 'package:wewo/widgets/custom_icon_button.dart';
import 'package:wewo/widgets/custom_text_form_field.dart';

class OrderScheduledExpandedScreen
    extends GetWidget<OrderScheduledExpandedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: getVerticalSize(302.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(261.00),
                                        width: getHorizontalSize(374.00),
                                        margin: getMargin(bottom: 10),
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgMain146,
                                                      height: getVerticalSize(
                                                          261.00),
                                                      width: getHorizontalSize(
                                                          374.00))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      decoration: AppDecoration
                                                          .gradientGray5099WhiteA70099,
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
                                                            Container(
                                                                width:
                                                                    size.width,
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            16),
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            17,
                                                                        right:
                                                                            198),
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
                                                                              padding: getPadding(bottom: 1),
                                                                              child: InkWell(
                                                                                  onTap: () {
                                                                                    onTapImgArrowleft();
                                                                                  },
                                                                                  child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24.00), width: getSize(24.00)))),
                                                                          Padding(
                                                                              padding: getPadding(left: 18, top: 4),
                                                                              child: Text("lbl_order_345".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold20))
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 53,
                                                                        right:
                                                                            16),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  6),
                                                                          child: Text(
                                                                              "lbl_scheduled".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsMedium16.copyWith(letterSpacing: 0.60))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  5),
                                                                          child: Text(
                                                                              "lbl_6_30_pm".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsMedium17.copyWith(letterSpacing: 0.98, height: 1.00)))
                                                                    ])),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 18,
                                                                        right:
                                                                            16),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 11),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgCalendar, height: getSize(28.00), width: getSize(28.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 14, top: 1),
                                                                              child: Text("lbl_march_5_2019".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular32.copyWith(letterSpacing: 1.28)))
                                                                        ]))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 23,
                                                                        right:
                                                                            15),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgGroup97Bluegray800,
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        342.00))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 16,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            31),
                                                                    child: Text(
                                                                        "msg_your_order_is_r2"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular16Gray600
                                                                            .copyWith(letterSpacing: 0.44))))
                                                          ])))
                                            ]))),
                                CustomButton(
                                    width: 343,
                                    text: "msg_show_delivery".tr,
                                    margin:
                                        getMargin(left: 15, top: 10, right: 15),
                                    alignment: Alignment.bottomCenter)
                              ]))),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: getPadding(left: 1, top: 21),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        width: 343,
                                        text: "msg_show_full_packa".tr,
                                        margin: getMargin(left: 15, right: 15),
                                        alignment: Alignment.center),
                                    Padding(
                                        padding: getPadding(
                                            left: 15, top: 25, right: 15),
                                        child: Text("msg_delivery_locati".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium16
                                                .copyWith(
                                                    letterSpacing: 0.60))),
                                    Padding(
                                        padding: getPadding(
                                            left: 15, top: 20, right: 15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomIconButton(
                                                  height: 42,
                                                  width: 42,
                                                  variant: IconButtonVariant
                                                      .FillBlue7001e,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation42X42)),
                                              Container(
                                                  width:
                                                      getHorizontalSize(237.00),
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 5,
                                                      bottom: 4),
                                                  child: Text(
                                                      "msg_floor_4_wakil".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular14))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(343.00),
                                        margin: getMargin(
                                            left: 15, top: 29, right: 15),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 15, top: 24, right: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_subtotal".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.60))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_bdt362".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.60)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 15, top: 25, right: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_delivery_charge"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.60))),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 3),
                                                      child: Text(
                                                          "lbl_bdt50".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.60)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 15, top: 21, right: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_total".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.60))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_bdt412".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.60)))
                                                ]))),
                                    Container(
                                        height: getVerticalSize(420.00),
                                        width: getHorizontalSize(374.00),
                                        margin: getMargin(top: 47),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          380.00),
                                                      width: getHorizontalSize(
                                                          374.00),
                                                      margin:
                                                          getMargin(top: 10),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgMain1210X374,
                                                                        height: getVerticalSize(
                                                                            210.00),
                                                                        width: getHorizontalSize(
                                                                            374.00)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillWhiteA7008c,
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              Container(width: getHorizontalSize(328.00), margin: getMargin(left: 15, top: 113, right: 15), child: Text("msg_cash_on_deriver".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14Bluegray800b7)),
                                                                              CustomTextFormField(width: 343, focusNode: FocusNode(), controller: controller.buttonsmobileController, hintText: "msg_contact_with_su".tr, margin: getMargin(left: 15, top: 37, right: 15), variant: TextFormFieldVariant.FillYellow900, padding: TextFormFieldPadding.PaddingAll12, textInputAction: TextInputAction.done, suffix: Container(margin: getMargin(left: 30, top: 12, right: 16, bottom: 12), child: CommonImageView(svgPath: ImageConstant.imgComputer)), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(24.00), minHeight: getVerticalSize(24.00))),
                                                                              Container(margin: getMargin(left: 15, top: 18, right: 15, bottom: 38), padding: getPadding(left: 30, top: 15, right: 110, bottom: 15), decoration: AppDecoration.txtFillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder9), child: Text("lbl_cancel_order".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium16RedA200))
                                                                            ])))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 15,
                                                          right: 15,
                                                          bottom: 10),
                                                      child: Column(
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
                                                                    "lbl_payment_method"
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
                                                                            letterSpacing:
                                                                                0.60))),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            17),
                                                                decoration: AppDecoration
                                                                    .fillTeal40023
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder12),
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
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  18,
                                                                              top:
                                                                                  22,
                                                                              bottom:
                                                                                  21),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                CustomIconButton(height: 42, width: 42, child: CommonImageView(svgPath: ImageConstant.imgCall42X42)),
                                                                                Container(
                                                                                    width: getHorizontalSize(120.00),
                                                                                    margin: getMargin(left: 14, top: 4, bottom: 1),
                                                                                    child: RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_you_selected".tr, style: TextStyle(color: ColorConstant.bluegray800B7, fontSize: getFontSize(14), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                                          TextSpan(text: "msg_cash_on_deliver".tr, style: TextStyle(color: ColorConstant.bluegray800, fontSize: getFontSize(14), fontFamily: 'Poppins', fontWeight: FontWeight.w600))
                                                                                        ]),
                                                                                        textAlign: TextAlign.left))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  31,
                                                                              right:
                                                                                  21,
                                                                              bottom:
                                                                                  30),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgArrowright,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00)))
                                                                    ]))
                                                          ])))
                                            ]))
                                  ]))))
                ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
