class AddressModel {
  final String id;
  final String name;
  final String address;
  final String phone;
  final bool isDefault;

  AddressModel({required this.id, required this.name,required this.address,required this.phone,required this.isDefault});

  @override
  String toString() {
    return 'AddressModel{id: $id, name: $name, address: $address, phone: $phone, isDefault: $isDefault}';
  }
}