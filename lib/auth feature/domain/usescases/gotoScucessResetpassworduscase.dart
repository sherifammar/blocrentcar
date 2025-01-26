import '../resporitories/auth_resportory.dart';

class GotoScucessResetpassworduscase{ 

  final AuthRepository authRepository;

  GotoScucessResetpassworduscase(this.authRepository);

   call(String email, String password)async{
    return authRepository.gotoScucessResetpassword( email,  password);
  }
  
}