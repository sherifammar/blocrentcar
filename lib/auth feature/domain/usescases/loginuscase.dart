import 'package:rentcarbloc/auth%20feature/domain/resporitories/auth_resportory.dart';

class LoginUsescase{ 
 final AuthRepository authRepository;
  LoginUsescase(this.authRepository);
  call(String email,String password)async{
    return await authRepository.Login(email, password);}
  
}

//==================



// import '../../../core/class/StatusRequest.dart';
// import '../resporitories/auth_resportory.dart';

// class LoginUsescase{ 
//  final AuthRepository authRepository;
//   LoginUsescase(this.authRepository);
//  Future<StatusRequest> call(String email,String password)async{
//     return await authRepository.Login(email, password);}
  
// }