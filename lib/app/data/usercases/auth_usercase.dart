import 'package:firebase_auth/firebase_auth.dart';
import 'package:new_wewo/app/data/repository/auth_repository.dart';

class AuthUserCase {
  final AuthRepository authRepository;

  AuthUserCase({required this.authRepository});
}
