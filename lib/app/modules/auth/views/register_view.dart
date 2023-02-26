import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/modules/auth/controllers/register_controller.dart';
import 'package:new_wewo/app/modules/widgets/custom_text_from_field.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100.0,
            ),
            const FlutterLogo(
              size: 100.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const FittedBox(
              child: Text(
                "Đăng ký tài khoản",
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Obx(
              () => Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    TextFieldWidget(
                      hintText: "name",
                      prefixIcon: Icon(Icons.person),
                      controller: controller.nameController,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "Tên không được để trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(
                      hintText: "phone",
                      prefixIcon: Icon(Icons.phone),
                      controller: controller.phoneController,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "Số điện thoại không được để trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(
                      hintText: "password",
                      prefixIcon: Icon(Icons.lock),
                      controller: controller.passwordController,
                      obscureText: controller.isShowPassWord.value,
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isShowPassWord.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () => controller.onPressedShowPassword(),
                      ),
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "Mật khẩu không được để trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(
                      hintText: "confirm password",
                      prefixIcon: const Icon(Icons.lock),
                      controller: controller.confirmPasswordController,
                      obscureText: controller.isShowPassWord.value,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "Mật khẩu không được để trống";
                        }
                        if (value != controller.passwordController.text) {
                          return "Mật khẩu không khớp";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Đã có tài khoản?"),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Đăng nhập",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: controller.register,
                child: const Text(
                  "Đăng nhập",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
