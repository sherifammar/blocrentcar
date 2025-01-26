// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../../controller/forgetpassword/resetpassword_controller.dart';

// import '../../../../core/class/handingdataview.dart';
// import '../../../../core/constant/color.dart';
// import '../../../../core/function/validinput.dart';
// import '../../widget/auth/Custombuttomauth.dart';
// import '../../widget/auth/customTextauth.dart';
// import '../../widget/auth/customtextformauth.dart';
// import '../../widget/auth/logoimage.dart';

// class Resetpassword extends StatelessWidget {
//   const Resetpassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ResetpasswordcontrollerImp resetpassword_controller =
//         Get.put(ResetpasswordcontrollerImp());
// // do not forget to add controller to change language
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: ColorAPP.background,
//           elevation: 0.0,
//           title:const Text("Reset PassWord",
//               style:
//                TextStyle(fontSize:34, color:ColorAPP.black,fontWeight: FontWeight.bold)),
//         ),
//         body: GetBuilder<ResetpasswordcontrollerImp>(
//           builder: (controller) => HandingDataRequest(statusRequest: controller.statusRequest, widget: Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                   child: Form(
//                     key: resetpassword_controller.formstate,
//                     child: ListView(children: [
//                       const SizedBox(height: 10),
//                       // const CustomTextauth(text: " New Password"),
//                            const Imageauth(),
//                       const SizedBox(height: 20),
//                       const CustomTextauth(text: "Please enter New Password"),
//                       const SizedBox(height: 20),
//                       CustomTextformauth(
//                         valid: (val) {
//                           return validinput(val!, 3, 100, "password");
//                         },
//                         hinttext: "Enter Your Password",
//                         iconData: Icons.lock_clock_outlined,
//                         labeltext: "password",
//                         mycontroller: resetpassword_controller.password,
//                         isNumber: true,
//                       ),
//                       const SizedBox(height: 20),
//                       CustomTextformauth(
//                         valid: (val) {
//                           return validinput(val!, 3, 100, "password");
//                         },
//                         hinttext: "Re Enter Your Password",
//                         iconData: Icons.lock_clock_outlined,
//                         labeltext: "repassword",
//                         mycontroller: resetpassword_controller.repassword,
//                         isNumber: true,
//                       ),
//                       CustomButtomauth(
//                           text: "enter",
//                           onPressed: () {
//                             resetpassword_controller.gotoscecussResetpassword();
//                           }),
//                       SizedBox(height: 30),
//                     ]),
//                   ),
//                 ),)
//         ));
//   }
// }
//==================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentcarbloc/auth%20feature/present/auth/forgetpassword/scucess_resetpassword.dart';
import 'package:rentcarbloc/auth%20feature/present/auth/login.dart';

import '../../../../core/const/color.dart';
import '../../../../core/function/validinput.dart';
import '../../auth_widget/auth/Custombuttomauth.dart';
import '../../auth_widget/auth/customTextauth.dart';
import '../../auth_widget/auth/customtextformauth.dart';
import '../../auth_widget/auth/logoimage.dart';
import '../../bloc/auth_bloc.dart';

// class Resetpassword extends StatelessWidget {
//   const Resetpassword({super.key});

//   @override
//   Widget build(BuildContext context) {

// do not forget to add controller to change language
//     return

//   }
// }

class Resetpassword extends StatefulWidget {
  final String email;
  const Resetpassword({super.key, required this.email});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorAPP.background,
        elevation: 0.0,
        title: const Text("Reset PassWord",
            style: TextStyle(
                fontSize: 34,
                color: ColorAPP.black,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is CorrectAuthState ) {
                             Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  Login(),
                    ),
                  );
            }
            else if (state is ErrorAuthState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          child: Form(
            key: formstate,
            child: ListView(children: [
              const SizedBox(height: 10),
              // const CustomTextauth(text: " New Password"),
              const Imageauth(),
              const SizedBox(height: 20),
              const CustomTextauth(text: "Please enter New Password"),
              const SizedBox(height: 20),
              CustomTextformauth(
                valid: (val) {
                  return validinput(val!, 3, 100, "password");
                },
                hinttext: "Enter Your Password",
                iconData: Icons.lock_clock_outlined,
                labeltext: "password",
                mycontroller: _passwordController,
                isNumber: true,
              ),
              const SizedBox(height: 20),
              CustomTextformauth(
                valid: (val) {
                  return validinput(val!, 3, 100, "password");
                },
                hinttext: "Re Enter Your Password",
                iconData: Icons.lock_clock_outlined,
                labeltext: "repassword",
                mycontroller: _repasswordController,
                isNumber: true,
              ),
              CustomButtomauth(
                  text: "enter",
                  onPressed: () {
             
                    if (formstate.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context).add(
                          GotoSecucessRestpasswordEvent(
                              password: _passwordController.text,
                              email: widget.email));
                    }
                  }),
              SizedBox(height: 30),
            ]),
          ),
        ),
      ),
    );
  }
}
