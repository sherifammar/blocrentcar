import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/function/handlingdatacontroller.dart';
import '../../domain/resporitories/auth_resportory.dart';
import '../data_auth_remote/data_auth_remote.dart';

class AuthResportoryImp implements AuthRepository {
  final SharedPreferences sharedPreferences;
  final RemoteDataSourceAuth remotedataSourceAuth;

  AuthResportoryImp(
      {required this.sharedPreferences, required this.remotedataSourceAuth});

  @override
  Future<StatusRequest> checkEmail(String email) async {
    // StatusRequest statusRequest = StatusRequest.loading; // for  loading

    var response = await remotedataSourceAuth.checkEmail(email);

    print("**************** $response*********");

    StatusRequest statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        return StatusRequest.success;
      } else {
        return StatusRequest.failure; //error in data
      }
    } else {
      return StatusRequest.failure;
    }
  }

  @override
  Future<StatusRequest> goToscucess_signup(String email) async {
    var response = await remotedataSourceAuth.goToscucess_signup(email);
    print("**************** $response*********");

    StatusRequest statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // Get.offNamed(AppRoutes.scucess_sginup);// send email to verfiycode page
        return StatusRequest.success;
      } else {
        return StatusRequest.failure; //error in data
      }
    } else {
      return StatusRequest.failure;
    }
  }

  @override
  Future<StatusRequest> gotoScucessResetpassword(
      String email, String password) async {
    var response =
        await remotedataSourceAuth.gotoScucessResetpassword(email, password);

    print("**************** $response*********");

    StatusRequest statusRequest = handdlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        return StatusRequest.success;
      } else {
        return StatusRequest.failure; //error in data
      }
    } else {
      return StatusRequest.failure;
    }
  }

  @override
  Future<StatusRequest> Login(String email, String password) async {
    var response = await remotedataSourceAuth.login(email, password);

    print("**************** $response*********");
    StatusRequest statusRequest = handdlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // if (response["data"]["users_approve"] == "1") {
        sharedPreferences.setString("id", response["data"]["users_id"]);
        sharedPreferences.setString("username", response["data"]["users_name"]);
        sharedPreferences.setString("email", response["data"]["users_email"]);
        sharedPreferences.setString("phone", response["data"]["users_phone"]);
        sharedPreferences.setString("step", "2");
        print(sharedPreferences.getString("step"));
        print(sharedPreferences.getString("id"));

        return StatusRequest.success;
      } else {
        return StatusRequest.failure;
      }
    } else {
      return StatusRequest.failure;
    }
  }

  @override
  Future<StatusRequest> Signup(
      String username, String password, String email, String phone) async {
    var response =
        await remotedataSourceAuth.signup(username, password, email, phone);

    print("**************** $response*********");

    StatusRequest statusRequest = handdlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        return StatusRequest.success;
      } else {
        return StatusRequest.failure; //error in data
      }
    } else {
      return StatusRequest.failure;
    }
  }
}
