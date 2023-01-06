import '../edit_profile_screen/widgets/edit_profile_item_widget.dart';
import 'controller/edit_profile_controller.dart';
import 'models/edit_profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wewo/core/app_export.dart';
import 'package:wewo/widgets/custom_icon_button.dart';
import 'package:wewo/widgets/custom_text_form_field.dart';

class EditProfileScreen extends GetWidget<EditProfileController> {
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
                          height: getVerticalSize(233.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(167.00),
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
                                                          .imgMain115,
                                                      height: getVerticalSize(
                                                          167.00),
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
                                                                        top: 3,
                                                                        bottom:
                                                                            139),
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            17,
                                                                        right:
                                                                            210),
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
                                                                              child: Text("lbl_edit_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold20))
                                                                        ])))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 118, top: 10, right: 118),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(69.00)),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse6,
                                                height: getSize(138.00),
                                                width: getSize(138.00),
                                                fit: BoxFit.cover)))),
                                CustomIconButton(
                                    height: 33,
                                    width: 33,
                                    margin: getMargin(
                                        left: 117,
                                        top: 10,
                                        right: 117,
                                        bottom: 9),
                                    variant: IconButtonVariant.FillYellow900,
                                    shape: IconButtonShape.CircleBorder18,
                                    alignment: Alignment.bottomRight,
                                    onTap: () {
                                      onTapBtntf();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgCamera33X33))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 47, right: 16),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.editProfileModelObj.value
                                  .editProfileItemList.length,
                              itemBuilder: (context, index) {
                                EditProfileItemModel model = controller
                                    .editProfileModelObj
                                    .value
                                    .editProfileItemList[index];
                                return EditProfileItemWidget(model);
                              }))),
                      Container(
                          height: getVerticalSize(274.00),
                          width: getHorizontalSize(374.00),
                          margin: getMargin(left: 1, top: 27),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(top: 10),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgMain116,
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
                                              hintText: "lbl_save".tr,
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
                                                          .imgSave)),
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

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
