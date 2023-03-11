import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';
import 'package:new_wewo/app/common/util/validators.dart';

class ChangeEmail extends GetView<AccountController> {
  ChangeEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Email",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
            accountController.resetEmail();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: accountController.loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 40,
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                validator: (value) {
                  //  return Validators.validateEmail(value);
                  if (!GetUtils.isEmail(value!)) {
                    return "Nhập email hợp lệ";
                  } else {
                    return null;
                  }
                },
                controller: accountController.emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_rounded),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                  helperText: "Chúng tôi sẽ gửi xác thực tới email mới của bạn",
                  helperStyle: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    final isValid =
                        accountController.loginFormKey.currentState!.validate();
                    if (isValid) {
                      UserModel user = UserModel(
                          id: accountController.user.value.id,
                          email: accountController.emailController.text,
                          fullName: accountController.user.value.fullName,
                          dateOfBirth: accountController.user.value.dateOfBirth,
                          urlAvatar: accountController.user.value.urlAvatar,
                          phone: accountController.user.value.phone,
                          gender: accountController.user.value.gender,
                          type: accountController.user.value.type,
                          tokens: accountController.user.value.tokens);
                      accountController.updateInfor(user);
                    } else {
                      // wrong
                    }
                  },
                  child: const Text("Lưu"),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
