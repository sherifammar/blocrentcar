import 'package:rentcarbloc/auth%20feature/domain/resporitories/auth_resportory.dart';

class CheckEmailusecase {
  
  final AuthRepository authRepository;

  CheckEmailusecase(this.authRepository);

  call(String email) async {
    return await authRepository.checkEmail(email);
  }
}