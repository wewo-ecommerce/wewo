import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';
import 'package:new_wewo/app/common/util/validators.dart';

class ChangePassword extends GetView<AccountController> {
  ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();
    var x = accountController.currentPassword;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Đổi mật khẩu",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
            accountController.resetInputPass();
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
                    "Mật khẩu cũ",
                    style: TextStyle(fontSize: 15),
                  )),
              Obx(
                () => TextFormField(
                  controller: accountController.currentPasswordController,
                  validator: (value) {
                    if (value != accountController.currentPassword.value) {
                      return "Mật khẩu của bạn không đúng";
                    } else {
                      return null;
                    }
                  },
                  obscureText: accountController.isHiddenCurrentPass.value,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {
                        accountController.toggleVisibleCurrentPass();
                      },
                      icon: accountController.isHiddenCurrentPass.value
                          ? const Icon(Icons.lock)
                          : const Icon(Icons.lock_open),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  height: 40,
                  child: Text(
                    "Mật khẩu mới",
                    style: TextStyle(fontSize: 15),
                  )),
              Obx(
                () => TextFormField(
                  controller: accountController.newPasswordController,
                  validator: (value) {
                    //  return Validators.validatePassword(value);
                    if (value!.isEmpty) {
                      return "Nhập lại";
                    } else if (value.length < 8) {
                      return "Mật khẩu phải có ít nhất 8 ký tự";
                    } else if (value ==
                        accountController.currentPassword.value) {
                      return "Mật khẩu mới phải khác mật khẩu hiện tại";
                    }
                    return null;
                  },
                  obscureText: accountController.isHiddenNewPass.value,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {
                        accountController.toggleVisibleNewtPass();
                      },
                      icon: accountController.isHiddenNewPass.value
                          ? const Icon(Icons.lock)
                          : const Icon(Icons.lock_open),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  height: 40,
                  child: Text(
                    "Xác nhận mật khẩu",
                    style: TextStyle(fontSize: 15),
                  )),
              Obx(
                () => TextFormField(
                  controller: accountController.confirmPasswordController,
                  validator: (value) {
                    // return Validators.validateConfirmPassword(
                    //     value, accountController.newPasswordController.text);
                    if (value! !=
                        accountController.newPasswordController.text) {
                      return "Mật khẩu xác nhận không khớp với mật khẩu mới";
                    } else {
                      return null;
                    }
                  },
                  obscureText: accountController.isHiddenConfirmPass.value,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {
                        accountController.toggleVisibleConfirmPass();
                      },
                      icon: accountController.isHiddenConfirmPass.value
                          ? const Icon(Icons.lock)
                          : const Icon(Icons.lock_open),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
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
                      accountController.changePass(
                          accountController.confirmPasswordController.text);
                    } else {
                      print('wrong');
                    }
                  },
                  child: const Text("Lưu"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
