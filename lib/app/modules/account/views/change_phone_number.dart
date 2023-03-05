import 'package:flutter/material.dart';

class ChangePhoneNumber extends StatefulWidget {
  ChangePhoneNumber({super.key});

  @override
  State<ChangePhoneNumber> createState() => _ChangePhoneNumberState();
}

class _ChangePhoneNumberState extends State<ChangePhoneNumber> {
  var formKey = GlobalKey<FormState>();

  var phoneController = TextEditingController();

  final RegExp _numericRegex = RegExp(r'^\d+$');
  String initialPhoneNumber = "0987654321";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phoneController.text = initialPhoneNumber;
  }

  bool isNumeric(String value) {
    return _numericRegex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Số điện thoại",
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
                child: Text("Số điện thoại"),
              ),
              TextFormField(
                controller: phoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nhập số điện thoại";
                  } else if (!isNumeric(value)) {
                    return "Nhập sai, số điện thoại không thể có chữ cái";
                  } else {
                    return null;
                  }
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
