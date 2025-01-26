part of 'internet_cubit.dart';

@immutable
abstract class InternetState {}

class InternetInitial extends InternetState {}

class Connectedstate extends InternetState {
  final String message;

  Connectedstate({required this.message});
}

class NotConnectedstate extends InternetState {
  final String message;

  NotConnectedstate({required this.message});
}

class LoginState extends InternetState {
  final Widget widget;

  LoginState({required this.widget});
}

class HomeState extends InternetState {
  final Widget widget;

  HomeState({required this.widget});
}
  // class LoginState extends InternetState {}
  //  class HomeState extends InternetState {}
