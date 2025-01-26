part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  
  const AuthState();
  
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}
class CorrectAuthState extends AuthState {}

class ErrorAuthState extends AuthState {
  final String message;

  ErrorAuthState({required this.message});

  @override
  List<Object> get props => [message];
}
  
//   class CorrecloginState extends AuthState {}

// class ErrorloginState extends AuthState {
//   final String message;

//   ErrorloginState({required this.message});

//   @override
//   List<Object> get props => [message];
// }

