class Validators {

  static fieldNull(dynamic field) {
    return field.isEmpty;
  }


  static phoneReal(String phone) {
    final rexPhone = RegExp(r'^[0-9]{10}$');
    return rexPhone.hasMatch(phone);
  }

}