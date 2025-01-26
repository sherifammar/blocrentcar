import '../../../core/class/StatusRequest.dart';
import '../../../core/class/crud.dart';
import '../../../core/const/linkapi.dart';

abstract class RemoteDataSourceAuth {
  login(String email, String password);
  signup(String username, String password, String email, String phone);
  goToscucess_signup(String email);
  // reSend();
  checkEmail(String email);
  gotoScucessResetpassword(String email, String password);
  // gotoresetpassword(dynamic verifycode, String email);
}

class RemoteDataSourceAuthimp implements RemoteDataSourceAuth {
  Crud crud;
 RemoteDataSourceAuthimp({required this.crud});

  @override
  checkEmail(String email) async{
     var response = await crud.postData("${AppLink.checkemail}", 
    {"email" : email ,});

    return response.fold((l) => l, (r) => r);
  }

  @override
  goToscucess_signup(String email) async{
   var response = await crud.postData("${AppLink.VerfiyCode_Signup}", 
    {"email" : email});
    return response.fold((l) => l, (r) => r); 
  }

  @override
  gotoScucessResetpassword(String email, String password) async{
    var response = await crud.postData("${AppLink.resetpassword}", 
    {
       "email" : email , 
      "password" : password });
    return response.fold((l) => l, (r) => r);
  }

  // @override
  // gotoresetpassword(dynamic verifycode, String email) async{
  // var response = await crud.postData("${AppLink.Verfiy_CodeSignup}", 
  //   {"email" : email , 
  //     "verfiycode" : verifycode});
  //   return response.fold((l) => l, (r) => r);
  // }

  @override
login(String email, String password) async {
    var response = await crud
        .postData("${AppLink.login}", {"email": email, "password": password});
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  @override
  signup(String username, String password, String email, String phone) async {
    var response = await crud.postData("${AppLink.signup}", {
      "username":username, 
      "password": password,
      "email": email,
      "phone": phone,
    });

    return response.fold((l) => l, (r) => r); // error => l not 1
  }
}
