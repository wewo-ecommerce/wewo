import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';
import 'change_phone_number.dart';
import 'change_email.dart';
import 'change_password.dart';
import 'change_name_view.dart';
import 'change_birthday.dart';
import 'change_gender.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<AccountController> {
  ProfileView({super.key});
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Hồ sơ",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Get.to(() => const ChangeNameView());
              },
              leading: FittedBox(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    accountController.user.value.urlAvatar,
                  ),
                ),
              ),
              title: Obx(() => Text(accountController.user.value.fullName)),
              subtitle: Obx(() => Text(accountController.user.value.email)),
              //    minVerticalPadding: 30,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(Icons.female),
              title: const Text("Giới tính"),
              trailing: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Obx(() => Text(accountController.user.value.gender)),
                    IconButton(
                        onPressed: () {
                          Get.to(() => ChangeGender());
                        },
                        icon: const Icon(Icons.navigate_next_sharp))
                  ],
                ),
              ),
              minVerticalPadding: 25,
            ),
            ListTile(
              leading: const Icon(Icons.date_range_outlined),
              title: const Text("Sinh nhật"),
              trailing: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Obx(
                      () => Text(DateFormat.yMd().format(
                          accountController.user.value.dateOfBirth.toDate())),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(() => ChangeBirthday());
                        },
                        icon: const Icon(Icons.navigate_next_sharp))
                  ],
                ),
              ),
              minVerticalPadding: 25,
            ),
            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: const Text("Email"),
              trailing: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Obx(() => Text(accountController.user.value.email)),
                    IconButton(
                        onPressed: () {
                          Get.to(() => ChangeEmail());
                        },
                        icon: const Icon(Icons.navigate_next_sharp))
                  ],
                ),
              ),
              minVerticalPadding: 25,
            ),
            ListTile(
              leading: const Icon(Icons.phone_android_outlined),
              title: const Text("Số điện thoại"),
              trailing: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Obx(() => Text(accountController.user.value.phone)),
                    IconButton(
                        onPressed: () {
                          Get.to(() => ChangePhoneNumber());
                        },
                        icon: const Icon(Icons.navigate_next_sharp))
                  ],
                ),
              ),
              minVerticalPadding: 25,
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text("Đổi mật khẩu"),
              trailing: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("************"),
                    IconButton(
                      onPressed: () {
                        Get.to(() => ChangePassword());
                      },
                      icon: const Icon(Icons.navigate_next_sharp),
                    ),
                  ],
                ),
              ),
              minVerticalPadding: 25,
            ),
          ],
        ),
      ),
    );
  }
}
