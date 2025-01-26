import '../../../core/class/StatusRequest.dart';

abstract class AuthRepository {
  // Future<StatusRequest> Login(String email , String password);
    Login(String email , String password);


  Signup(String username, String password,String  email,String  phone);
  goToscucess_signup(String email);
  // reSend();
  checkEmail(String email);
  gotoScucessResetpassword(String email , String password);
  // gotoresetpassword(dynamic verifycode , String email);
}
