import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AccountController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController currentPasswordController =
      TextEditingController();
  late TextEditingController confirmPasswordController =
      TextEditingController();
  late TextEditingController newPasswordController = TextEditingController();
  late TextEditingController phoneController = TextEditingController();
  late TextEditingController lastNameController = TextEditingController();
  late TextEditingController firstNameController = TextEditingController();
  RxString currentPassword = ''.obs;
  RxBool isHiddenCurrentPass = true.obs;
  RxBool isHiddenNewPass = true.obs;
  RxBool isHiddenConfirmPass = true.obs;
  RxString date = ''.obs;
  RxString gender = ''.obs;
  late Rx<UserModel> user;

  @override
  void onInit() {
    super.onInit();
    user = UserModel(
        id: "id",
        email: "email@gmail.com",
        fullName: "Trần Văn Công",
        dateOfBirth: Timestamp.fromDate(DateTime(2000, 10, 23)),
        urlAvatar: "https://www.w3schools.com/howto/img_avatar.png",
        phone: "055555555",
        gender: "Nam",
        type: "type",
        tokens: ["token1", "token2"]).obs;
    List<String> nameParts = nameComponent(user.value.fullName);
    firstNameController.text = nameParts[0];
    lastNameController.text = nameParts[1];
    phoneController.text = user.value.phone;
    emailController.text = user.value.email;
    currentPasswordController.text = "";
    confirmPasswordController.text = "";
    newPasswordController.text = "";
    currentPassword.value = "password";
    date.value = user.value.dateOfBirth.toDate().toString();
    gender.value = user.value.gender;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    currentPasswordController.dispose();
    confirmPasswordController.dispose();
    newPasswordController.dispose();
    phoneController.dispose();
  }

  void updateInfor(UserModel u) {
    user.value = u;
  }

  void changePass(String value) {
    currentPassword.value = value;
  }

  void toggleVisibleCurrentPass() {
    isHiddenCurrentPass.value = !isHiddenCurrentPass.value;
  }

  void toggleVisibleNewtPass() {
    isHiddenNewPass.value = !isHiddenNewPass.value;
  }

  void toggleVisibleConfirmPass() {
    isHiddenConfirmPass.value = !isHiddenConfirmPass.value;
  }

  Future<DateTime> chooseDate() async {
    DateTime? birthday = await showDatePicker(
            context: Get.context!,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 365 * 100)),
            lastDate: DateTime.now())
        .then((value) {
      if (value == null) {
        return null;
      } else {
        date.value = value.toString();
        return value;
      }
    });
    return birthday!;
  }

  void toggleGender(String value) {
    gender.value = value;
  }

// reset: When the user hasn't updated infor yet
  void resetInputPass() {
    currentPasswordController.text = "";
    confirmPasswordController.text = "";
    newPasswordController.text = "";
  }

  void resetName() {
    List<String> nameParts = nameComponent(user.value.fullName);
    firstNameController.text = nameParts[0];
    lastNameController.text = nameParts[1];
  }

  void resetGender() {
    gender.value = user.value.gender;
  }

  void resetBirthday() {
    date.value = user.value.dateOfBirth.toDate().toString();
  }

  void resetPhone() {
    phoneController.text = user.value.phone;
  }

  void resetEmail() {
    emailController.text = user.value.email;
  }
}

List<String> nameComponent(String value) {
  List<String> list = [];
  List<String> lisTemp = value.split(" ");
  String firstName = lisTemp.last;
  lisTemp.removeLast();
  String lastName = lisTemp.join(" ");
  list.add(firstName);
  list.add(lastName);
  return list;
}
