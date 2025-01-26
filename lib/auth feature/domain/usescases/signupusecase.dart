import '../resporitories/auth_resportory.dart';

class SignupUsescase {
  final AuthRepository authRepository;

  SignupUsescase(this.authRepository);

  call(String username, String password, String email, String phone) async {
    return await authRepository.Signup(username, password, email, phone);
  }
}
