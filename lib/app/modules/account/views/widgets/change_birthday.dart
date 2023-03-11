import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/common/util/exports.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChangeBirthday extends GetView<AccountController> {
  ChangeBirthday({super.key});

  DateTime? date;
  @override
  Widget build(BuildContext context) {
    final accountController = Get.find<AccountController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ngày sinh",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
            accountController.resetBirthday();
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
                "Ngày sinh của bạn",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(() {
                    return Text(DateFormat.yMd()
                        .format(DateTime.parse(accountController.date.value)));
                  }),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {
                      date = await accountController.chooseDate();
                    },
                    icon: const Icon(Icons.calendar_month_outlined),
                  ),
                ],
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
                  UserModel user = UserModel(
                      id: accountController.user.value.id,
                      email: accountController.emailController.text,
                      fullName: accountController.user.value.fullName,
                      dateOfBirth: Timestamp.fromDate(date!),
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
