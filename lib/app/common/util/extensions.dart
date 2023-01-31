import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';

import '../../data/errors/api_error.dart';
import '../../data/interface_controller/api_interface_controller.dart';

class Extensions {}

extension BorderRadiusExt on num {
  BorderRadius get borderRadius => BorderRadius.circular(toDouble());

  InputBorder outlineInputBorder({
    BorderSide borderSide = BorderSide.none,
  }) =>
      OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: borderSide,
      );

  BorderSide borderSide({
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      BorderSide(
        color: color ?? Colors.white,
        width: 0.5,
        style: style ?? BorderStyle.solid,
      );
}

BoxShadow get boxShadow => BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 3,
      blurRadius: 4,
      offset: const Offset(0, 3), // changes position of shadow
    );
BoxDecoration get borderService => BoxDecoration(
    border: Border.all(color: Colors.black, width: 0.5),
    borderRadius: 5.borderRadius);

extension HexColorExt on String {
  Color get fromHex {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) {
      buffer.write('ff');
    }

    if (startsWith('#')) {
      buffer.write(replaceFirst('#', ''));
    }
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension ImageExt on String {
  String get image => 'assets/images/$this.png';

  Image imageAsset({
    Size? size,
    BoxFit? fit,
    Color? color,
  }) =>
      Image.asset(
        this,
        color: color,
        width: size?.width,
        height: size?.height,
        fit: fit,
      );
}

extension FutureExt<T> on Future<Response<T>?> {
  void futureValue(
    Function(T value) response, {
    required Function(String? error)? onError,
    required VoidCallback retryFunction,
  }) {
    final interface = Get.find<ApiInterfaceController>();
    interface.error = null;

    Utils.loadingDialog();

    timeout(
      Constants.timeout,
      onTimeout: () {
        Utils.closeDialog();

        Utils.showSnackbar(Strings.connectionTimeout);

        _retry(interface, retryFunction);

        throw ApiError(
          type: ErrorType.connectTimeout,
          error: Strings.connectionTimeout,
        );
      },
    ).then((value) {
      if (value?.body != null) {
        Utils.closeDialog();
        response(value!.body as T);
      }
      interface.update();
    }).catchError((e) {
      if (e == null) return;
      String errorMessage = "";
      if (e is ApiError) {
        errorMessage = e.message;
      } else {
        errorMessage = e.toString();
      }

      if (e is ApiError) {
        if ((e.type == ErrorType.connectTimeout ||
            e.type == ErrorType.noConnection)) {
          interface.error = e;

          _retry(interface, retryFunction);
        } else {}
      }

      if (onError != null) {
        onError(errorMessage);
      }

      printError(info: 'catchError: error: $e\nerrorMessage: $errorMessage');
    });
  }

  void _retry(
    ApiInterfaceController interface,
    VoidCallback retryFunction,
  ) {
    interface.retry = retryFunction;
    interface.update();
  }
}

extension AlignWidgetExt on Widget {
  Widget align({
    Alignment alignment = Alignment.center,
  }) =>
      Align(
        alignment: alignment,
        child: this,
      );
}

extension FormatDurationExt on int {
  String formatDuration() {
    final min = this ~/ 60;
    final sec = this % 60;
    return "${min.toString().padLeft(2, "0")}:${sec.toString().padLeft(2, "0")} min";
  }
}

extension DebugLog on String {
  void debugLog() {
    return debugPrint(
      '\n******************************* DebugLog *******************************\n'
      ' $this'
      '\n******************************* DebugLog *******************************\n',
      wrapWidth: 1024,
    );
  }
}
