import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';
import 'package:get/get.dart';

class ChangeNameView extends GetView<AccountController> {
  const ChangeNameView({super.key});

  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Name",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
            accountController.resetName();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
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
                "Họ",
                style: TextStyle(fontSize: 15),
              ),
            ),

            TextField(
              controller: accountController.lastNameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Federico"),
            ),
            // ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 40,
              child: Text(
                "Tên",
                style: TextStyle(fontSize: 15),
              ),
            ),

            TextField(
              controller: accountController.firstNameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Valverde"),
            ),
            //  ),
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
                  String fullName =
                      "${accountController.lastNameController.text} ${accountController.firstNameController.text}";
                  UserModel user = UserModel(
                      id: accountController.user.value.id,
                      email: accountController.emailController.text,
                      fullName: fullName,
                      dateOfBirth: accountController.user.value.dateOfBirth,
                      urlAvatar: accountController.user.value.urlAvatar,
                      phone: accountController.user.value.phone,
                      gender: accountController.user.value.gender,
                      type: accountController.user.value.type,
                      tokens: accountController.user.value.tokens);
                  accountController.updateInfor(user);
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
    );
  }
}
