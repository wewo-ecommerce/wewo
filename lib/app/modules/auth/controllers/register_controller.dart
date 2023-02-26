import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/repository/auth_repository.dart';
import 'package:new_wewo/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final isLoading = false.obs;
  final isShowPassWord = true.obs;

  void toggleObscure() {}
  void onPressedShowPassword() {
    isShowPassWord.value = !isShowPassWord.value;
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      try {
        Get.toNamed(Routes.OTP);
      } catch (e) {
        Get.snackbar('Error', e.toString());
      } finally {
        isLoading.value = false;
      }
    }
  }
}
