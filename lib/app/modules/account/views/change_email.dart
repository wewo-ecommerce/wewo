import 'package:flutter/material.dart';

class ChangeEmail extends StatefulWidget {
  const ChangeEmail({super.key});

  @override
  State<ChangeEmail> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  String email = "abc@gmail.com";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.text = email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Email",
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
              const SizedBox(
                height: 30,
                child: Text("Email"),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nhập email";
                  } else {
                    String patern =
                        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
                    final regExp = RegExp(patern);
                    {
                      if (!regExp.hasMatch(value)) {
                        return "Nhập email hợp lệ";
                      } else {
                        return null;
                      }
                    }
                  }
                },
                controller: emailController,
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
                    final isValid = formKey.currentState!.validate();
                    if (isValid) {
                      print("Right");
                      // update infor user
                    } else {
                      print("Wrong");
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
