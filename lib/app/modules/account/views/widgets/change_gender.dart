import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';

class ChangeGender extends GetView<AccountController> {
  List<String> genders = ["Nam", "Nữ", "Khác"];
  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Giới tính",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
            accountController.resetGender();
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
                "Chọn giới tính",
                style: TextStyle(fontSize: 15),
              ),
            ),
            DropdownButtonFormField<String>(
              isDense: true,
              isExpanded: true,
              elevation: 90,
              items: genders.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                accountController.toggleGender(value!);
              },
              value: accountController.gender.value,
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
                  UserModel user = UserModel(
                      id: accountController.user.value.id,
                      email: accountController.emailController.text,
                      fullName: accountController.user.value.fullName,
                      dateOfBirth: accountController.user.value.dateOfBirth,
                      urlAvatar: accountController.user.value.urlAvatar,
                      phone: accountController.user.value.phone,
                      gender: accountController.gender.value,
                      type: accountController.user.value.type,
                      tokens: accountController.user.value.tokens);
                  accountController.updateInfor(user);
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
    );
  }
}
