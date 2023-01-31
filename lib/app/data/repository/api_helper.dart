import 'package:get/get_connect/http/src/response/response.dart';

abstract class ApiHelper {
  Future<Response> registerAccount(
      String userName,
      String userPassword,
      String confirmUserPassword,
      String phoneNumber,
      String emailAddress,
      String role);
  Future<Response> signIn(String userName, String password);
}
