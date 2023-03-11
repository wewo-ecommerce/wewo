import 'package:flutter/material.dart';
import 'package:new_wewo/app/modules/account/controllers/account_controller.dart';
import 'widgets/profile_view.dart';
import 'package:get/get.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tài khoản",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Get.put(AccountController());
              Get.to(() => ProfileView());
            },
            leading: const Icon(Icons.person_2_outlined),
            title: const Text("Hồ sơ"),
            minLeadingWidth: 30,
            minVerticalPadding: 20,
          ),
          ListTile(
            onTap: () {
              print("Order");
            },
            leading: const Icon(Icons.fact_check_rounded),
            title: const Text("Đặt hàng"),
            minLeadingWidth: 30,
            minVerticalPadding: 20,
          ),
          ListTile(
            onTap: () {
              print("Địa chỉ");
            },
            leading: const Icon(Icons.add_location_alt_sharp),
            title: const Text("Địa chỉ"),
            minLeadingWidth: 30,
            minVerticalPadding: 20,
          ),
          ListTile(
            onTap: () {
              print("payment");
            },
            leading: const Icon(Icons.payment),
            title: const Text("payment"),
            minLeadingWidth: 30,
            minVerticalPadding: 20,
          )
        ],
      ),
    );
  }
}
