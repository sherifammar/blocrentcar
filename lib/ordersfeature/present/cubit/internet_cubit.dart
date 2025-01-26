import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../auth feature/present/auth/login.dart';
import '../page/home.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit() : super(InternetInitial());

  StreamSubscription? _subscription;

  void connect() {
    emit(Connectedstate(message: "Connected"));
  }

  void disconnect() {
    emit(NotConnectedstate(message: " NotConnected"));
  }

  void checkConnect() {
    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        connect();
      } else {
        disconnect();
      }
    });
  }
//=============

  void home() {
    emit(HomeState(widget:const Home()));
  }

  void login() {
    emit(LoginState(widget:const Login()));
  }

// void login() {
//     emit(LoginState());
//   }
//   void home() {
//     emit(HomeState());
//   }
  changeTopage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("step") == "2") {
      print(sharedPreferences.getString("step"));
      home();
    } else {
      login();
      print(sharedPreferences.getString("step"));
    }
  }

  //==========
  Future<void> close() async {
    _subscription?.cancel();
    return super.close();
  }
}
