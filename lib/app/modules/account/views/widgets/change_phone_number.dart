import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';

class ChangePhoneNumber extends GetView<AccountController> {
  var formKey = GlobalKey<FormState>();

  var phoneController = TextEditingController();

  final RegExp numericRegex = RegExp(r'^\d+$');
  bool isNumeric(String value) {
    return numericRegex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Số điện thoại",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
            accountController.resetPhone();
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  "Số điện thoại",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextFormField(
                controller: accountController.phoneController,
                onSaved: (value) {
                  accountController.phoneController.text = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Input again";
                  } else if (!isNumeric(value)) {
                    return "Provide valid phone";
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "(84) 987654321",
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.smartphone_sharp)),
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
                          email: accountController.user.value.email,
                          fullName: accountController.user.value.fullName,
                          dateOfBirth: accountController.user.value.dateOfBirth,
                          urlAvatar: accountController.user.value.urlAvatar,
                          phone: accountController.phoneController.text,
                          gender: accountController.user.value.gender,
                          type: accountController.user.value.type,
                          tokens: accountController.user.value.tokens);
                      accountController.updateInfor(user);
                    } else {
                      print("Wrong");
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
