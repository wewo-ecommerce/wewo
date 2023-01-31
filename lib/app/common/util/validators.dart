import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/extension.dart';

import '../values/strings.dart';

class Validators {
  Validators._();
  static final RegExp regexDouble = RegExp(r'([.]*0)(?!.*\d)');
  static String? validateEmpty(String? v) {
    if (v!.isEmpty) {
      return Strings.fieldCantBeEmpty;
    } else {
      return null;
    }
  }

  static String? validateTEmpty<T>(T? v) {
    if (v == null) {
      return Strings.fieldCantBeEmpty;
    } else {
      return null;
    }
  }

  static String? validateEmail(String? v) {
    if (v!.isEmpty) {
      return Strings.emailCantBeEmpty;
    } else if (!GetUtils.isEmail(v)) {
      return Strings.enterValidEmail;
    } else {
      return null;
    }
  }

  static String? validatePhone(String? v) {
    if (v!.isEmpty) {
      return Strings.fieldCantBeEmpty;
    } else if (v.length != 10) {
      return Strings.enterValidNumber;
    } else {
      return null;
    }
  }

  static String? validateEmailPhone(String? v) {
    if (v!.isEmpty) {
      return Strings.fieldCantBeEmpty;
    } else if (GetUtils.isNumericOnly(v)) {
      return validatePhone(v);
    } else {
      return validateEmail(v);
    }
  }

  static String? validatePassword(String? v) {
    if (v!.isEmpty) {
      return Strings.passwordCantBeEmpty;
    } else if (v.length < 8) {
      return Strings.passwordValidation;
    } else {
      return null;
    }
  }

  static String? validateConfirmPassword(String? v, String password) {
    if (v!.isEmpty || password.isEmpty) {
      return Strings.passwordCantBeEmpty;
    } else if (v.length < 8 || password.length < 8 || v != password) {
      return Strings.confirmPasswordValidation;
    } else {
      return null;
    }
  }

  static String? validateCheckbox({
    bool v = false,
    String error = Strings.checkboxValidation,
  }) {
    if (!v) {
      return error;
    } else {
      return null;
    }
  }

  static bool validateName(String value) {
    if (value.isNullOrEmpty) {
      return false;
    }
    String pattern = r'^[a-zA-Z\s\.]+$';
    RegExp regExp = RegExp(pattern);
    return !regExp.hasMatch(value);
  }

  static bool validateDomain(String value) {
    if (value.isNullOrEmpty) {
      return true;
    }
    String pattern = r'^[a-z0-9]+$';
    RegExp regExp = RegExp(pattern);

    return regExp.hasMatch(value);
  }
}
