import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:new_wewo/app/common/localizations/localization_service.dart';

import 'app/common/theme/layyuu_theme/theme.dart';
import 'app/common/util/exports.dart';
import 'app/common/util/initializer.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// TODO: Setup firebase
  // await Firebase.initializeApp();
  Initializer.instance.init(() {
    // runApp(
    //   DevicePreview(
    //     builder: (context) => MyApp(), // Wrap your app
    //   ),
    // );
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: LafyuuTheme.themeData,
          defaultTransition: Transition.rightToLeftWithFade,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          initialBinding: InitialBindings(),
          locale: LocalizationService.locale,
          fallbackLocale: LocalizationService.fallbackLocale,
          translations: LocalizationService(),
        );
      },
    );
  }
}
