import 'package:get/get.dart';
import '../../common/constants.dart';
import '../../common/storage/storage.dart';
import '../interceptor.dart';
import 'api_helper.dart';

class ApiHelperImpl extends GetConnect with ApiHelper {
  @override
  void onInit() {
    httpClient.baseUrl = Constants.baseUrl;
    httpClient.timeout = Constants.timeout;
    addRequestModifier();

    httpClient.addResponseModifier(
      (request, response) => interceptor(
        httpClient,
        request,
        response,
      ),
    );
    if (Storage.hasData(Constants.token)) {
      printInfo(info: Storage.getValue(Constants.token));
    }
  }

  void addRequestModifier() {
    httpClient.addRequestModifier<dynamic>((request) {
      if (Storage.hasData(Constants.token)) {
        request.headers['Authorization'] = Storage.getValue(Constants.token);
      }

      printInfo(
        info: 'REQUEST ║ ${request.method.toUpperCase()}\n'
            'url: ${request.url}\n'
            'Headers: ${request.headers}\n'
            'Body: ${request.files?.toString() ?? ''}\n',
      );

      return request;
    });
  }

  @override
  Future<Response> registerAccount(
      String userName,
      String userPassword,
      String confirmUserPassword,
      String phoneNumber,
      String emailAddress,
      String role) {
    Map<String, dynamic> body = {
      "user_name": userName,
      "user_password": userPassword,
      "confirm_user_password": confirmUserPassword,
      "phone_number": phoneNumber,
      "email_address": emailAddress,
      "role": role
    };
    return post("/auth/sign-up", body);
  }

  @override
  Future<Response> signIn(String userName, String password) {
    Map<String, dynamic> body = {
      "user_name": userName,
      "user_password": password
    };
    return post("/auth/sign-in", body);
  }
}
