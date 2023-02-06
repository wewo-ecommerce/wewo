import 'package:firebase_auth/firebase_auth.dart';

class SplashModel {

  User? _user;

  checkLogIn() async {
    _user = FirebaseAuth.instance.currentUser;
    _user ??= await FirebaseAuth.instance.authStateChanges().first;
    if(_user != null) {
      print(_user);
      return true;
    }else{
      print(_user);
      return false;
    }
  }
}
