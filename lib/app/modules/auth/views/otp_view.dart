import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/repository/auth_repository.dart';
import 'package:new_wewo/app/modules/auth/controllers/otp_controller.dart';
import 'package:new_wewo/app/routes/app_pages.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                  "Nhập mã OTP",
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Mã OTP đã được gửi đến số điện thoại của bạn",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              OTPTextField(
                controller: controller.otpController,
                length: 6,
                width: 300,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 35,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 16),
                onChanged: (pin) {},
                onCompleted: (pin) {
                  controller.verifyOtp(pin);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Mã OTP sẽ hết hạn sau 00:30",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue,
                  ),
                ),
                onPressed: () {
                  controller.resendOtp();
                },
                child: const Text("Gửi lại mã OTP"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
