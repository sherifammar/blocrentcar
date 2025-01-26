// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../controller/auth/login_controller.dart';
// import '../../../core/class/handingdataview.dart';
// import '../../../core/constant/color.dart';

// import '../../../core/function/validinput.dart';
// import '../../core/function/alertexitapp.dart';
// import '../widget/auth/Custombuttomauth.dart';
// import '../widget/auth/customTextauth.dart';
// import '../widget/auth/customTextbodyauth.dart';
// import '../widget/auth/customtextformauth.dart';
// import '../widget/auth/customtextsignuporsginin.dart';
// import '../widget/auth/logoimage.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     LogincontrollerImp logincontroller = Get.put(LogincontrollerImp());

//     // do not forget to add controller to change language
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: ColorAPP.background,
//           elevation: 0.0,
//           title:const Text("Wellcome",
//               style:
//                TextStyle(fontSize:45, color:ColorAPP.black,fontWeight: FontWeight.bold)
//                )
//                ),

//         body: WillPopScope(
//             onWillPop: alertExitAPP,
//             child: GetBuilder<LogincontrollerImp>(
//                 builder: (controller) => HandingDataRequest(
//                       statusRequest: controller.statusRequest,
//                       widget: Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 15, horizontal: 30),
//                         child: Form(
//                           key: logincontroller.formstate,// globel key for validate
//                           child: ListView(children: [
//                             const Imageauth(),
//                             const SizedBox(height: 20),
//                             const CustomTextauth(text:"Dr Ali Mohamed"),
//                             const SizedBox(height: 10),
//                              CustomTextbodyauth(
//                               textbody:
//                                   "Neurology Specialist",
//                             ),
//                             const SizedBox(height: 15),
//                             CustomTextformauth(
//                               // error in mycontroller => remove const

//                               valid: (val) {
//                                 return validinput(val!, 5, 100, "email");
//                               },
//                               hinttext: "email",
//                               iconData: Icons.email_outlined,
//                               labeltext: "email",
//                               mycontroller: logincontroller.email,
//                               isNumber: false,
//                             ),
//                             const SizedBox(height: 15),
//                             GetBuilder<LogincontrollerImp>(
//                               builder: (logincontroller) => CustomTextformauth(
//                                 obscureText: logincontroller.isShowpassword,// show password
//                                 onTapicon: () {
//                                   logincontroller.showPassword();
//                                 },
//                                 valid: (val) {
//                                   return validinput(val!, 3, 100, "password");
//                                 },
//                                 hinttext: "Enter Your Password",
//                                 iconData: Icons.lock_outline,
//                                 labeltext: "Password",
//                                 mycontroller: logincontroller.password,
//                                 isNumber: true,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             InkWell(
//                               onTap: () {
//                                 logincontroller.gotoforgetpassword();
//                               },
//                               child: const Text(
//                                 "Forget Password",
//                                 textAlign: TextAlign.end,
//                               ),
//                             ),
//                             CustomButtomauth(
//                                 text: "Sign In",
//                                 onPressed: () {
//                                   logincontroller.login();
//                                 }),
//                             SizedBox(height: 30),
//                             CustomTextSginuporsignin(
//                               textone: 'Do not have an account',
//                               texttwo: 'Sgin up',
//                               onTap: () {
//                                 logincontroller.gotosginup();
//                               },
//                             )
//                           ]),
//                         ),
//                       ),
//                     ))));
//   }
// }
//=======================

// import 'package:flutter/material.dart';

// import '../../../core/const/color.dart';

// import '../../../core/function/validinput.dart';
// import '../auth_widget/auth/Custombuttomauth.dart';
// import '../auth_widget/auth/customTextauth.dart';
// import '../auth_widget/auth/customTextbodyauth.dart';
// import '../auth_widget/auth/customtextformauth.dart';
// import '../auth_widget/auth/customtextsignuporsginin.dart';
// import '../auth_widget/auth/logoimage.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {

//     // do not forget to add controller to change language
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: ColorAPP.background,
//           elevation: 0.0,
//           title:const Text("Wellcome",
//               style:
//                TextStyle(fontSize:45, color:ColorAPP.black,fontWeight: FontWeight.bold)
//                )
//                ),

//         body: WillPopScope(
//             // onWillPop: alertExitAPP,
//             onWillPop: () {  },
//             child:    Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 15, horizontal: 30),
//                         child: Form(
//                           // key: logincontroller.formstate,// globel key for validate
//                           child: ListView(children: [
//                             const Imageauth(),
//                             const SizedBox(height: 20),
//                             const CustomTextauth(text:"Dr Ali Mohamed"),
//                             const SizedBox(height: 10),
//                              CustomTextbodyauth(
//                               textbody:
//                                   "Neurology Specialist",
//                             ),
//                             const SizedBox(height: 15),
//                             CustomTextformauth(
//                               // error in mycontroller => remove const

//                               valid: (val) {
//                                 return validinput(val!, 5, 100, "email");
//                               },
//                               hinttext: "email",
//                               iconData: Icons.email_outlined,
//                               labeltext: "email",
//                               mycontroller: logincontroller.email,
//                               isNumber: false,
//                             ),
//                             const SizedBox(height: 15),
//                           CustomTextformauth(
//                                 obscureText: logincontroller.isShowpassword,// show password
//                                 onTapicon: () {
//                                   // logincontroller.showPassword();
//                                 },
//                                 valid: (val) {
//                                   return validinput(val!, 3, 100, "password");
//                                 },
//                                 hinttext: "Enter Your Password",
//                                 iconData: Icons.lock_outline,
//                                 labeltext: "Password",
//                                 mycontroller: logincontroller.password,
//                                 isNumber: true,
//                               ),
//                             const SizedBox(height: 10),
//                             InkWell(
//                               onTap: () {
//                                 // logincontroller.gotoforgetpassword();
//                               },
//                               child: const Text(
//                                 "Forget Password",
//                                 textAlign: TextAlign.end,
//                               ),
//                             ),
//                             CustomButtomauth(
//                                 text: "Sign In",
//                                 onPressed: () {
//                                   // logincontroller.login();
//                                 }),
//                             SizedBox(height: 30),
//                             CustomTextSginuporsignin(
//                               textone: 'Do not have an account',
//                               texttwo: 'Sgin up',
//                               onTap: () {
//                                 // logincontroller.gotosginup();
//                               },
//                             )
//                           ]),
//                         ),
//                       ),
//                     )

//                     );
//   }
// }
//==================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentcarbloc/auth%20feature/present/auth/forgetpassword/forgetpassword.dart';
import 'package:rentcarbloc/auth%20feature/present/auth/sginup.dart';
import 'package:rentcarbloc/auth%20feature/present/bloc/auth_bloc.dart';
import 'package:rentcarbloc/ordersfeature/present/page/home.dart';

import '../../../core/const/color.dart';

import '../../../core/function/validinput.dart';
import '../../../ordersfeature/present/widget/snackbar_message.dart';
import '../auth_widget/auth/Custombuttomauth.dart';
import '../auth_widget/auth/customTextauth.dart';
import '../auth_widget/auth/customTextbodyauth.dart';
import '../auth_widget/auth/customtextformauth.dart';
import '../auth_widget/auth/customtextsignuporsginin.dart';
import '../auth_widget/auth/logoimage.dart';
import '../auth_widget/delete_dialog_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isShowpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: ColorAPP.background,
            elevation: 0.0,
            title: const Text("Wellcome",
                style: TextStyle(
                    fontSize: 45,
                    color: ColorAPP.black,
                    fontWeight: FontWeight.bold))),
        body: WillPopScope(
          // onWillPop: alertExitAPP,
          onWillPop: () => alertExitAPP(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child:BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is CorrectAuthState) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                }
                 else if(state is ErrorAuthState) {
                                       SnackBarMessage().showSuccessSnackBar(
                    message: state.message, context: context);
                }

                //========
                
              },
               child: 
                Form(
                  key: formstate, // globel key for validate
                  child: ListView(children: [
                    const Imageauth(),
                    const SizedBox(height: 20),
                    const CustomTextauth(text: "car rental"),
                    const SizedBox(height: 10),
                   const CustomTextbodyauth(
                      textbody: "Neurology Specialist",
                    ),
                    const SizedBox(height: 15),
                    CustomTextformauth(
                      // error in mycontroller => remove const

                      valid: (val) {
                        return validinput(val!, 5, 100, "email");
                      },
                      hinttext: "email",
                      iconData: Icons.email_outlined,
                      labeltext: "email",
                      mycontroller: _emailController,
                      isNumber: false,
                    ),
                    const SizedBox(height: 15),
                    CustomTextformauth(
                      obscureText: isShowpassword, // show password
                      onTapicon: () {
                        // logincontroller.showPassword();
                      },
                      valid: (val) {
                        return validinput(val!, 3, 100, "password");
                      },
                      hinttext: "Enter Your Password",
                      iconData: Icons.lock_outline,
                      labeltext: "Password",
                      mycontroller: _passwordController,
                      isNumber: true,
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        // logincontroller.gotoforgetpassword();
                        Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgetPasswprd(),
                    ),
                  );
                      },
                      child: const Text(
                        "Forget Password",
                        textAlign: TextAlign.end,
                      ),
                    ),
                    CustomButtomauth(
                        text: "Sign In",
                        onPressed: () {
                          // logincontroller.login();
                          if (formstate.currentState!.validate()) {
                               BlocProvider.of<AuthBloc>(context).add(
                            LoginEvent(
                                email: _emailController.text,
                                password: _passwordController.text),
                          );
                          }
                       
                        }),
                    SizedBox(height: 30),
                    CustomTextSginuporsignin(
                      textone: 'Do not have an account',
                      texttwo: 'Sgin up',
                      onTap: () {
                        // logincontroller.gotosginup();
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Sginup(),
                            ),
                          );
                        
                      },
                    )
                  ]),
                )
              
            ),
          ),
        ));
  }
}
