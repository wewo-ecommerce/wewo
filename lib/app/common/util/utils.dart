import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/common/util/extensions.dart';

import '../values/strings.dart';
import '../values/styles/app_text_style.dart';

class Utils {
  const Utils._();

  static String getRandomString(
    int length, {
    bool isNumber = true,
  }) {
    final chars = isNumber ? '1234567890' : 'abcdefghijklmnopqrstuvwxyz';
    final rnd = Random();

    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(
          rnd.nextInt(
            chars.length,
          ),
        ),
      ),
    );
  }

  static void loadingDialog() {
    Utils.closeDialog();

    Get.dialog(
      Center(
        child: Container(
          padding: EdgeInsets.all(5.w),
          decoration:
              BoxDecoration(color: Colors.white, borderRadius: 10.borderRadius),
          child: const CupertinoActivityIndicator(),
        ),
      ),
    );
  }

  static void closeDialog() {
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }

  static void closeSnackbar() {
    if (Get.isSnackbarOpen == true) {
      Get.back();
    }
  }

  static void showSnackbar(String? message) {
    closeSnackbar();

    Get.rawSnackbar(message: message);
  }

  static void closeKeyboard() {
    final currentFocus = Get.focusScope!;
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void goBackToScreen(String routeName) {
    Get.until(
      (route) => route.settings.name == routeName,
    );
  }

  static Future<void> showImagePicker({
    required Function(File image) onGetImage,
  }) {
    return showModalBottomSheet<void>(
      context: Get.context!,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    getImage(source: 2).then((v) {
                      if (v != null) {
                        onGetImage(v);
                        Get.back();
                      }
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.image,
                        size: 60.w,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        Strings.gallery,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.semiBoldStyle.copyWith(),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    getImage().then((v) {
                      if (v != null) {
                        onGetImage(v);
                        Get.back();
                      }
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.camera,
                        size: 60.w,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        Strings.camera,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.semiBoldStyle.copyWith(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  static Future<File?> getImage({int source = 1}) async {
    // File? croppedFile;
    // final picker = ImagePicker();

    // final pickedFile = await picker.pickImage(
    //   source: source == 1 ? ImageSource.camera : ImageSource.gallery,
    //   imageQuality: 60,
    // );

    // if (pickedFile != null) {
    //   final image = File(pickedFile.path);

    //   croppedFile = await ImageCropper().cropImage(
    //     compressQuality: 50,
    //     sourcePath: image.path,
    //     aspectRatioPresets: [
    //       CropAspectRatioPreset.square,
    //       CropAspectRatioPreset.ratio3x2,
    //       CropAspectRatioPreset.original,
    //       CropAspectRatioPreset.ratio4x3,
    //       CropAspectRatioPreset.ratio16x9
    //     ],
    //     androidUiSettings: const AndroidUiSettings(
    //       toolbarColor: Colors.transparent,
    //       toolbarWidgetColor: Colors.transparent,
    //       initAspectRatio: CropAspectRatioPreset.original,
    //       lockAspectRatio: false,
    //     ),
    //     iosUiSettings: const IOSUiSettings(
    //       minimumAspectRatio: 0.1,
    //       aspectRatioLockDimensionSwapEnabled: true,
    //     ),
    //   );
    // }

    return File("");
  }

  static String? birthDateValidator(String? value) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy');
    final String formatted = formatter.format(now);
    if (value != null) {
      String str1 = value;
      List<String> str2 = str1.split('/');
      String month = str2.isNotEmpty ? str2[0] : '';
      String day = str2.length > 1 ? str2[1] : '';
      String year = str2.length > 2 ? str2[2] : '';
      if (value.isEmpty) {
        return 'BirthDate is Empty';
      } else if (int.parse(month) > 13) {
        return 'Month is invalid';
      } else if (int.parse(day) > 32) {
        return 'Day is invalid';
      } else if ((int.parse(year) > int.parse(formatted))) {
        return 'Year is invalid';
      } else if ((int.parse(year) < 1920)) {
        return 'Year is invalid';
      }
    }
    return null;
  }

  static String shortenName(String? nameRaw,
      {int nameLimit = 2, bool addDots = false}) {
    //* Limiting val should not be gt input length (.substring range issue)

    if (nameRaw != null) {
      final max = nameLimit < nameRaw.length ? nameLimit : nameRaw.length;
      //* Get short name
      final name = nameRaw.substring(0, max);
      //* Return with '..' if input string was sliced
      if (addDots && nameRaw.length > max) return name.toUpperCase();
      return name.toUpperCase();
    }
    return "_";
  }
}
