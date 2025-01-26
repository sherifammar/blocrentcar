// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../controller/auth/sginup_controller.dart';
// import '../../../core/class/handingdataview.dart';
// import '../../../core/constant/color.dart';
// import '../../../core/function/alertexitapp.dart';
// import '../../../core/function/validinput.dart';
// import '../widget/auth/Custombuttomauth.dart';
// import '../widget/auth/customTextauth.dart';
// import '../widget/auth/customTextbodyauth.dart';
// import '../widget/auth/customtextformauth.dart';
// import '../widget/auth/customtextsignuporsginin.dart';
// import '../widget/auth/logoimage.dart';

// class Sginup extends StatelessWidget {
//   const Sginup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get.lazyPut(() => SginupcontrollerImp());
//     SginupcontrollerImp sginupcontroller = Get.put(SginupcontrollerImp());
// // do not forget to add controller to change language
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: ColorAPP.background,
//           elevation: 0.0,
//           title:const Text("sign out",
//               style:
//                TextStyle(fontSize:45, color:ColorAPP.black,fontWeight: FontWeight.bold)
//                )),

//         body: WillPopScope(
//             onWillPop: alertExitAPP,
//             child: GetBuilder<SginupcontrollerImp>(
//                 builder: (controller) => HandingDataRequest(
//                       statusRequest: controller.statusRequest,
//                       widget: Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 15, horizontal: 30),
//                         child: Form(
//                           key: sginupcontroller.formstate,
//                           child: ListView(children: [
//                             const SizedBox(height: 20),
//                             // const CustomTextauth(text: "wellcome"),
//                                  const Imageauth(),
//                             const SizedBox(height: 10),
//                             const CustomTextbodyauth(
//                               textbody:
//                                   "Sign In With Your Email And Password",
//                             ),
//                             const SizedBox(height: 15),
//                             CustomTextformauth(
//                               valid: (val) {
//                                 return validinput(val!, 5, 100, "username");
//                               },
//                               hinttext: "Enter Your username",//parameter
//                               iconData: Icons.person_4_outlined,//parameter
//                               labeltext: "username",//parameter
//                               mycontroller: sginupcontroller.username,//parameter
//                               isNumber: false,// change type text to number
//                             ),
//                             const SizedBox(height: 15),
//                             CustomTextformauth(
//                               valid: (val) {
//                                 return validinput(val!, 3, 100, "password");
//                               },
//                               hinttext: "Enter Your password",
//                               iconData: Icons.lock_outline,
//                               labeltext: "Password",
//                               mycontroller: sginupcontroller.password,
//                               isNumber: true,
//                             ),
//                             const SizedBox(height: 10),
//                             CustomTextformauth(
//                               valid: (val) {
//                                 return validinput(val!, 5, 100, "email");
//                               },
//                               hinttext: "Enter Your email",
//                               iconData: Icons.email_outlined,
//                               labeltext: "email",
//                               mycontroller: sginupcontroller.email,
//                               isNumber: false,
//                             ),
//                             const SizedBox(height: 10),
//                             CustomTextformauth(
//                               valid: (val) {
//                                 return validinput(val!, 3, 100, "phone");
//                               },
//                               hinttext: "Enter Your phone",
//                               iconData: Icons.phone_android_outlined,
//                               labeltext: "Phone",
//                               mycontroller: sginupcontroller.phone,
//                               isNumber: true,
//                             ),
//                             const SizedBox(height: 10),
//                             CustomButtomauth(
//                                 text: "Sign up",
//                                 onPressed: () {
//                                   sginupcontroller.Sginup();
//                                 }),
//                             SizedBox(height: 30),
//                             CustomTextSginuporsignin(
//                               onTap: () {
//                                 sginupcontroller.gotosignin();
//                               },
//                               textone: 'have an account ? ',
//                               texttwo: 'Sign Up',
//                             ),

//                           ]),
//                         ),
//                       ),
//                     ))));
//   }
// }
//================
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentcarbloc/auth%20feature/present/auth/scucess_signup.dart';

import '../../../core/const/color.dart';
import '../../../core/function/validinput.dart';
import '../../../ordersfeature/present/widget/snackbar_message.dart';
import '../auth_widget/auth/Custombuttomauth.dart';
import '../auth_widget/auth/customTextbodyauth.dart';
import '../auth_widget/auth/customtextformauth.dart';
import '../auth_widget/auth/customtextsignuporsginin.dart';
import '../auth_widget/auth/logoimage.dart';
import '../auth_widget/delete_dialog_widget.dart';
import '../bloc/auth_bloc.dart';

class Sginup extends StatefulWidget {
  const Sginup({super.key});

  @override
  State<Sginup> createState() => _SginupState();
}

class _SginupState extends State<Sginup> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: ColorAPP.background,
            elevation: 0.0,
            title: const Text("sign out",
                style: TextStyle(
                    fontSize: 45,
                    color: ColorAPP.black,
                    fontWeight: FontWeight.bold))),
        body: WillPopScope(
          onWillPop: () => alertExitAPP(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is CorrectAuthState) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Scusesssginup(),
                    ),
                  );
                }
                else if (state is ErrorAuthState) {
                  SnackBarMessage().showSuccessSnackBar(
                      message: state.message, context: context);
                }
              },
              child:
               (Form(
                  key: formstate,
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    // const CustomTextauth(text: "wellcome"),
                    const Imageauth(),
                    const SizedBox(height: 10),
                    const CustomTextbodyauth(
                      textbody: "Sign In With Your Email And Password",
                    ),
                    const SizedBox(height: 15),
                    CustomTextformauth(
                      valid: (val) {
                        return validinput(val!, 5, 100, "username");
                      },
                      hinttext: "Enter Your username", //parameter
                      iconData: Icons.person_4_outlined, //parameter
                      labeltext: "username", //parameter
                      mycontroller: _usernameController, //parameter
                      isNumber: false, // change type text to number
                    ),
                    const SizedBox(height: 15),
                    CustomTextformauth(
                      valid: (val) {
                        return validinput(val!, 3, 100, "password");
                      },
                      hinttext: "Enter Your password",
                      iconData: Icons.lock_outline,
                      labeltext: "Password",
                      mycontroller: _passwordController,
                      isNumber: true,
                    ),
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 10),
                    CustomTextformauth(
                      valid: (val) {
                        return validinput(val!, 3, 100, "phone");
                      },
                      hinttext: "Enter Your phone",
                      iconData: Icons.phone_android_outlined,
                      labeltext: "Phone",
                      mycontroller: _phoneController,
                      isNumber: true,
                    ),
                    const SizedBox(height: 10),
                    CustomButtomauth(
                        text: "Sign up",
                        onPressed: () {
                          // sginupcontroller.Sginup();
                          BlocProvider.of<AuthBloc>(context).add(SignupEvent(
                              email: _emailController.text,
                              password: _passwordController.text,
                              username: _usernameController.text,
                              phone: _phoneController.text));
                        }),
                    SizedBox(height: 30),
                    CustomTextSginuporsignin(
                      onTap: () {
                        // sginupcontroller.gotosignin();
                        Navigator.pop(context);
                      },
                      textone: 'have an account ? ',
                      texttwo: 'Sign Up',
                    ),
                  ]),
                )
              
            ),
          ),
        )));
  }
}
