import 'package:get/get.dart';
import 'package:new_wewo/app/data/models/address_model.dart';


class AddressController extends GetxController {
  RxList<AddressModel> addressList = <AddressModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    //Dummy data for test
    final List<AddressModel> dummyAddress = <AddressModel>[

    ];
    addressList.addAll(dummyAddress);
  }


  void addAddress() {}
  void editAddress() {}
  void removeAddress() {}

}
