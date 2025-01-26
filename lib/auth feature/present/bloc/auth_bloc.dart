import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/class/StatusRequest.dart';
import '../../../core/class/StatusRequest.dart';
import '../../../core/class/StatusRequest.dart';
import '../../domain/usescases/checkEmailusecase.dart';
import '../../domain/usescases/gotoScucessResetpassworduscase.dart';
import '../../domain/usescases/loginuscase.dart';
import '../../domain/usescases/signupusecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckEmailusecase checkEmailusecase;
  final LoginUsescase loginUsescase;
  final GotoScucessResetpassworduscase gotoScucessResetpassworduscase;
  final SignupUsescase signupUsescase;
//  late StatusRequest statusRequest;

  AuthBloc(
      {required this.checkEmailusecase,
      required this.loginUsescase,
      required this.gotoScucessResetpassworduscase,
      required this.signupUsescase})
      : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is CheckEmaileEvent) {
        final result = await checkEmailusecase.call(event.email);

        if (result == StatusRequest.failure) {
          print(result);
          emit(ErrorAuthState(message: "not found"));
        } else {
          print(result);
          emit(CorrectAuthState());
          print("result is $result");
        }
//================
      } else if (event is LoginEvent) {
        final result = await loginUsescase.call(event.email, event.password);

        if (result == StatusRequest.success) {
          emit(CorrectAuthState());
        } else {
          emit(ErrorAuthState(message: "not found"));
        }
      } else if (event is GotoSecucessRestpasswordEvent) {
        final result = await gotoScucessResetpassworduscase.call(
            event.email, event.password);
        if (result == StatusRequest.failure) {
          emit(ErrorAuthState(message: "error"));
        } else {
        emit(ErrorAuthState(message: "correct change password"));
        print("result is $result");
        }

      } else if (event is SignupEvent) {
        final result = await signupUsescase.call(
            event.email, event.password, event.username, event.phone);
        if (result == StatusRequest.failure) {
          emit(ErrorAuthState(message: "it is exit"));
        } else {
          emit(CorrectAuthState());
        }
      }
    });
  }
}
