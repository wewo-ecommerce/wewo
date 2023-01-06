import 'controller/customer_support_controller.dart';
import 'package:flutter/material.dart';
import 'package:wewo/core/app_export.dart';
import 'package:wewo/presentation/categroy_page/categroy_page.dart';
import 'package:wewo/presentation/home_page/home_page.dart';
import 'package:wewo/presentation/more_page/more_page.dart';
import 'package:wewo/presentation/my_bag_page/my_bag_page.dart';
import 'package:wewo/widgets/custom_bottom_bar.dart';
import 'package:wewo/widgets/custom_button.dart';
import 'package:wewo/widgets/custom_icon_button.dart';

class CustomerSupportScreen extends GetWidget<CustomerSupportController> {
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
                          height: getVerticalSize(180.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1),
                          child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgMain140,
                                        height: getVerticalSize(180.00),
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
                                                  margin: getMargin(top: 16),
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 17, right: 17),
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
                                                                            16),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      InkWell(
                                                                          onTap:
                                                                              () {
                                                                            onTapImgArrowleft();
                                                                          },
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgArrowleft,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  18,
                                                                              top:
                                                                                  3,
                                                                              bottom:
                                                                                  4),
                                                                          child: Text(
                                                                              "lbl_chat_with_us".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsSemiBold16))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            16),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUser24X24,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00)))
                                                          ]))),
                                              Container(
                                                  margin: getMargin(
                                                      left: 15,
                                                      top: 20,
                                                      right: 15,
                                                      bottom: 17),
                                                  decoration: AppDecoration
                                                      .fillYellow90023
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 44,
                                                            width: 44,
                                                            margin: getMargin(
                                                                left: 15,
                                                                top: 20,
                                                                bottom: 22),
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillYellow900,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll10,
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgActionshopping)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 17,
                                                                top: 13,
                                                                bottom: 13),
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
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          right:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_order_345"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsMedium16
                                                                              .copyWith(letterSpacing: 0.60))),
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          248.00),
                                                                      margin: getMargin(
                                                                          top:
                                                                              2),
                                                                      child: Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .spaceBetween,
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .end,
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                                padding: getPadding(top: 5, bottom: 2),
                                                                                child: Text("lbl_delivered".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium12)),
                                                                            Text("lbl_700".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtPoppinsSemiBold20Yellow900)
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              6,
                                                                          right:
                                                                              10),
                                                                      child: Text(
                                                                          "msg_october_14_201"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular12Bluegray800b7))
                                                                ]))
                                                      ]))
                                            ])))
                              ])),
                      Container(
                          height: getVerticalSize(347.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1, top: 253),
                          decoration: AppDecoration.fillWhiteA700,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: getVerticalSize(274.00),
                                    width: getHorizontalSize(374.00),
                                    margin: getMargin(top: 10),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 10),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgMain141,
                                                      height: getVerticalSize(
                                                          151.00),
                                                      width: getHorizontalSize(
                                                          374.00)))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(274.00),
                                                  width:
                                                      getHorizontalSize(374.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA7008c)))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: getMargin(
                                        left: 76, right: 76, bottom: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(26.50))),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomButton(
                                              width: 164,
                                              text: "lbl_i_want_a_refund".tr,
                                              margin: getMargin(
                                                  left: 29, right: 28),
                                              variant: ButtonVariant
                                                  .FillLightgreenA700,
                                              shape:
                                                  ButtonShape.RoundedBorder19,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular16,
                                              alignment: Alignment.center),
                                          CustomButton(
                                              width: 221,
                                              text: "msg_the_delivery_is".tr,
                                              margin: getMargin(top: 15),
                                              variant: ButtonVariant
                                                  .FillLightgreenA700,
                                              shape:
                                                  ButtonShape.RoundedBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll8,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular16),
                                          CustomButton(
                                              width: 221,
                                              text: "msg_the_delivery_is".tr,
                                              margin: getMargin(top: 15),
                                              variant: ButtonVariant
                                                  .FillLightgreenA700,
                                              shape:
                                                  ButtonShape.RoundedBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll8,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular16),
                                          CustomButton(
                                              width: 155,
                                              text: "msg_delivery_is_lat".tr,
                                              margin: getMargin(
                                                  left: 29, top: 15, right: 29),
                                              variant: ButtonVariant
                                                  .FillLightgreenA700,
                                              shape:
                                                  ButtonShape.RoundedBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll8,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular16,
                                              alignment: Alignment.center)
                                        ])))
                          ]))
                    ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Imghome:
        return HomePage();
      case BottomBarEnum.Imgcomputer24X24:
        return CategroyPage();
      case BottomBarEnum.Imgbag:
        return MyBagPage();
      case BottomBarEnum.Imgmenu:
        return MorePage();
      default:
        return getDefaultWidget();
    }
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
