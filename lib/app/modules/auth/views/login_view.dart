import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/modules/auth/controllers/login_controller.dart';
import 'package:new_wewo/app/modules/widgets/custom_text_from_field.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              const FlutterLogo(
                size: 100.0,
              ),
              const SizedBox(
                height: 100.0,
              ),
              const FittedBox(
                child: Text(
                  "Chào mừng bạn đến với",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Wewo",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
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
                        prefixIcon: const Icon(Icons.lock),
                        controller: controller.passwordController,
                        obscureText: !controller.isShowPassword.value,
                        onSubmitted: (text) {
                          controller.passwordController.text = text;
                        },
                        suffixIcon: IconButton(
                          onPressed: () => controller.onPressedShowPassword(),
                          icon: Icon(
                            controller.isShowPassword.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.blue,
                          ),
                        ),
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Mật khẩu không được để trống";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => controller.onPressedForgotPassword(),
                    child: const Text(
                      "Quên mật khẩu?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => controller.onPressedRegister(),
                    child: const Text.rich(
                      TextSpan(
                        text: "Bạn chưa có tài khoản?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 68, 66, 66),
                        ),
                        children: [
                          TextSpan(
                            text: " Đăng ký",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
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
                  onPressed: () => controller.onPressedLogin(),
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
        ),
      ),
    );
  }
}
