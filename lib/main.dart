import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentcarbloc/auth%20feature/present/bloc/auth_bloc.dart';

import 'package:rentcarbloc/ordersfeature/present/bloc/orders_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth feature/present/auth/login.dart';
import 'ordersfeature/present/cubit/internet_cubit.dart';
import 'ordersfeature/present/page/home.dart';
import 'injection_contain.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.sl<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => InternetCubit()..checkConnect(),
        ),
        BlocProvider(
          create: (_) => di.sl<OrdersBloc>(),
        ),
        BlocProvider(
          create: (_) => InternetCubit()..changeTopage(),
        ),
      ],
      child:
       MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocListener<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state is NotConnectedstate) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            } else if (state is Connectedstate) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          // child: Home(),
          child: BlocBuilder<InternetCubit, InternetState>(
              builder: (context, state) {
            if (state is HomeState) {
              return const Home();
            }
            return const Login();

            //  else {
            //   // return Login();
            // }
          }),
        ),
      ),
      //================
      
    );
  }
}

// class MyMainpage extends StatelessWidget {
//   const MyMainpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("mainpage"),
//         centerTitle: true,
//       ),
//       body: Container(
//         child: Center(
//          child: Row(children: [
//           Container(
//             child: MaterialButton(onPressed: () {
//            Navigator.of(context).pushAndRemoveUntil(
//                     MaterialPageRoute(builder: (_) => Home()),
//                      (route) => false);

//             },child: Text("home"),),
//           )

//          ]),
//       ),
//     ));
//   }
// }
