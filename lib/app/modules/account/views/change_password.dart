import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  var formKey = GlobalKey<FormState>();
  var oldPasswordController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool isOldPasswordVisible = true;
  bool isNewPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  String currentPassword = "password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Đổi mật khẩu",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
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
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Mật khẩu cũ"),
              TextFormField(
                controller: oldPasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nhập mật khẩu cũ";
                  } else if (value != currentPassword) {
                    return "Mật khẩu không đúng";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isOldPasswordVisible = !isOldPasswordVisible;
                      });
                    },
                    icon: isOldPasswordVisible
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
                obscureText: isOldPasswordVisible,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Mật khẩu mới"),
              TextFormField(
                controller: newPasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nhập mật khẩu mới";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isNewPasswordVisible = !isNewPasswordVisible;
                      });
                    },
                    icon: isNewPasswordVisible
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
                obscureText: isNewPasswordVisible,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Xác nhận mật khẩu"),
              TextFormField(
                controller: confirmPasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Xác nhận mật khẩu";
                  } else if (value != newPasswordController.text) {
                    return "Mật khẩu không trùng khớp";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                    icon: isConfirmPasswordVisible
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
                obscureText: isConfirmPasswordVisible,
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
                    final isValid = formKey.currentState!.validate();
                    isValid
                        ? print("It is valid") // update infor user
                        : print("Wrong");
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
