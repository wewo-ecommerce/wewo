import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/repository/auth_repository.dart';
import 'package:new_wewo/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  RxBool isShowPassword = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void login() {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      try {
        AuthRepository.loginWithPhoneNumber(
          phone: phoneController.text,
          password: passwordController.text,
        );
        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        Get.snackbar('Error', e.toString());
      } finally {
        isLoading.value = false;
      }
    }
  }

  void onPressedShowPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  void onPressedLogin() {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      try {
        AuthRepository.loginWithPhoneNumber(
          phone: phoneController.text,
          password: passwordController.text,
        );
        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        Get.snackbar('Error', e.toString());
      } finally {
        isLoading.value = false;
      }
    }
  }

  void onPressedRegister() {
    Get.toNamed(Routes.OTP);
  }

  void onPressedForgotPassword() {}

  // void login() async {
  //   if (_formKey.currentState!.validate()) {
  //     _isLoading.value = true;
  //     try {
  //       await AuthRepository.loginWithPhoneNumber(
  //         phone: _phoneController.text,
  //         password: _passwordController.text,
  //       );
  //       Get.offAllNamed(Routes.HOME);
  //     } catch (e) {
  //       Get.snackbar('Error', e.toString());
  //     } finally {
  //       _isLoading.value = false;
  //     }
  //   }
  // }
}
