import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_wewo/app/data/models/user_model.dart';
import '../views/change_phone_number.dart';
import '../views/change_email.dart';
import '../views/change_password.dart';
import '../views/change_name_view.dart';
import '../views/change_birthday.dart';
import '../views/change_gender.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  bool isVisible = true;
  UserModel user = UserModel(
      id: "id",
      email: "email@gmail.com",
      fullName: "Trần Văn Hoàng",
      dateOfBirth: Timestamp.fromDate(DateTime(2000, 10, 23)),
      urlAvatar: "https://www.w3schools.com/howto/img_avatar.png",
      phone: "0987654321",
      gender: "Nam",
      type: "type",
      tokens: ["token1", "token2"]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Hồ sơ",
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
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ChangeNameView();
                }));
              },
              leading: FittedBox(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    user.urlAvatar,
                  ),
                ),
              ),
              title: Text(user.fullName),
              subtitle: Text(user.email),
              //    minVerticalPadding: 30,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.female),
              title: Text("Giới tính"),
              trailing: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(user.gender),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const ChangeGender();
                          }));
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
                    Text(DateFormat.yMd().format(user.dateOfBirth.toDate())),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const ChangeBirthday();
                          }));
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
                    Text(user.email),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ChangeEmail();
                          }));
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
                    Text(user.phone),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ChangePhoneNumber();
                          }));
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const ChangePassword();
                            },
                          ),
                        );
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
