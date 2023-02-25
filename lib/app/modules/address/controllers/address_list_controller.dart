import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/address_model.dart';

class AddressListController extends GetxController {
  RxList<AddressModel> addressList = <AddressModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    //Dummy data for test
    final List<AddressModel> dummyAddress = <AddressModel>[
      AddressModel(
          id: '1',
          name: "Priscekila",
          address:
              "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
          phone: "+99 1234567890",
          isDefault: true,
      ),
      AddressModel(
        id: '2',
        name: "Ahmad Khaidir",
        address:
        "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
        phone: "+99 1234567890",
        isDefault: true,
      ),
      AddressModel(
        id: '3',
        name: "Ho Chi Minh",
        address:
        "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
        phone: "+84 1234567890",
        isDefault: true,
      ),
    ];
    addressList.addAll(dummyAddress);
  }

  void addAddress() {}

  void editAddress() {}

  void removeAddress() {}
}
