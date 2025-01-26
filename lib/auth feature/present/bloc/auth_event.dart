part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  const LoginEvent({required this.email, required this.password});
  @override
  List<Object> get props => [email, password];
}

class CheckEmaileEvent extends AuthEvent {
  final String email;
  const CheckEmaileEvent({required this.email});
  @override
  List<Object> get props => [email];
}

class GotoSecucessRestpasswordEvent extends AuthEvent {
  final String email;
  final String password;
  const GotoSecucessRestpasswordEvent(
      {required this.password, required this.email});
  @override
  List<Object> get props => [email, password];
}

class SignupEvent extends AuthEvent {
  final String username;
  final String password;
  final String email;
  final String phone;
  const SignupEvent (
      {required this.username,
      required this.password,
      required this.email,
      required this.phone});
  @override
  List<Object> get props => [username, password, email, phone];
}
