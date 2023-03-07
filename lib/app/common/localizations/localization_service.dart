import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/localizations/values/st_en_us.dart';
import 'package:new_wewo/app/common/localizations/values/st_vi_vn.dart';

class LocalizationService extends Translations {
  static final locale = _getLocaleFromLanguage();

  static const fallbackLocale = Locale('en', 'US');

  static final langCodes = [
    'en',
    'vi',
  ];

  static final locales = [
    const Locale('en', 'US'),
    const Locale('vi', 'VN'),
  ];

  static void changeLocale(String langCode) {
    final locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale!);
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'vi_VN': vi,
      };

  static Locale? _getLocaleFromLanguage({String? langCode}) {
    var lang = langCode ?? Get.deviceLocale?.languageCode ?? 'en';
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale;
  }
}
