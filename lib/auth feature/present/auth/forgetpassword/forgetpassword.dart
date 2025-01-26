import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentcarbloc/auth%20feature/present/auth/forgetpassword/resetpassword.dart';

import '../../../../core/const/color.dart';
import '../../../../core/function/validinput.dart';
import '../../auth_widget/auth/Custombuttomauth.dart';
import '../../auth_widget/auth/customTextauth.dart';
import '../../auth_widget/auth/customtextformauth.dart';
import '../../auth_widget/auth/logoimage.dart';
import '../../bloc/auth_bloc.dart';

// class ForgetPasswprd extends StatelessWidget {
//   const ForgetPasswprd({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ForgetPasswprdcontrollerImp forgetPassword_controller =
//         Get.put(ForgetPasswprdcontrollerImp());
//     // do not forget to add controller to change language
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: ColorAPP.background,
//           elevation: 0.0,
//           title:const Text("forget paswword",
//              style:
//                TextStyle(fontSize:25, color:ColorAPP.black,fontWeight: FontWeight.bold)
//                   ),
//         ),
//         body: GetBuilder<ForgetPasswprdcontrollerImp>(
//           builder: (controller) =>  HandingDataRequest(statusRequest: controller.statusRequest, widget:Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                   child: Form(
//                     key: forgetPassword_controller.formstate,
//                     child: ListView(children: [
//                          const Imageauth(),
//                       const SizedBox(height: 10),
//                       const CustomTextauth(text: "check email"),
//                       const SizedBox(height: 20),
//                       CustomTextformauth(
//                         valid: (val) {
//                           return validinput(val!, 5, 100, "email");
//                         },
//                         hinttext: "Enter Your email",
//                         iconData: Icons.email_outlined,
//                         labeltext: "email",
//                         mycontroller: forgetPassword_controller.email,
//                         isNumber: false,
//                       ),
//                       const SizedBox(height: 20),
//                       CustomButtomauth(
//                           text: "check",
//                           onPressed: () {
//                             forgetPassword_controller.checkemail();
//                           }),
//                       SizedBox(height: 30),
//                     ]),
//                   ),
//                 ),)
//         ));
//   }
// }

//----------------

// class ForgetPasswprd extends StatelessWidget {
//   const ForgetPasswprd({super.key});

//   @override
//   Widget build(BuildContext context) {

//     // do not forget to add controller to change language
//     return

//   }
// }

class ForgetPasswprd extends StatefulWidget {
  const ForgetPasswprd({super.key});

  @override
  State<ForgetPasswprd> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ForgetPasswprd> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorAPP.background,
        elevation: 0.0,
        title: const Text("forget paswword",
            style: TextStyle(
                fontSize: 25,
                color: ColorAPP.black,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is CorrectAuthState) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Resetpassword(
                    email: _emailController.text,
                  ),
                ),
              );
            }
          },
          child: Form(
            key: formstate,
            child: ListView(children: [
              const Imageauth(),
              const SizedBox(height: 10),
              const CustomTextauth(text: "check email"),
              const SizedBox(height: 20),
              CustomTextformauth(
                valid: (val) {
                  return validinput(val!, 5, 100, "email");
                },
                hinttext: "Enter Your email",
                iconData: Icons.email_outlined,
                labeltext: "email",
                mycontroller: _emailController,
                isNumber: false,
              ),
              const SizedBox(height: 20),
              CustomButtomauth(
                  text: "check",
                  onPressed: () {
                    if (formstate.currentState!.validate()) {
                      BlocProvider.of<AuthBloc>(context)
                          .add(CheckEmaileEvent(email: _emailController.text));
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
