import '../resporitories/auth_resportory.dart';

class GoToscucess_signupuscase {
  final AuthRepository authRepository;

  GoToscucess_signupuscase(this.authRepository);
  call( String email)async{
    return await authRepository.goToscucess_signup(email);
  }
}