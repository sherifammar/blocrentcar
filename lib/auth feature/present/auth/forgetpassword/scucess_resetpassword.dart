// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// import '../../../../controller/auth/scusessresetcontroller.dart';
// import '../../../../core/constant/color.dart';
// import '../../widget/auth/Custombuttomauth.dart';


// class ScusessResetpassword extends StatelessWidget {
//   const ScusessResetpassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ScusessresetcontrollercontrollerImp ScusessResetpasswordcontroller =
//         Get.put(ScusessresetcontrollercontrollerImp());
//     return Scaffold(

//       // appBar: AppBar(
//       //   centerTitle: true,
//       //   backgroundColor: ColorAPP.background,
//       //   elevation: 0.0,
//       //   title:const Text("scusess ",
           
//       //          style:
//       //          TextStyle(fontSize:60, color:ColorAPP.black,fontWeight: FontWeight.bold)
//       //           ),
//       // ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//           const  Center(
//               child: Icon(
//                 Icons.check_circle_outline,
//                 size: 350,
//                 color: ColorAPP.blue,
//               ),
//             ),
//           const  Text("scusess" , style:
//                TextStyle(fontSize:45, color:ColorAPP.black,fontWeight: FontWeight.bold)),
//          const   SizedBox(height: 30),
//             Container(
// width: 290,
//               child: CustomButtomauth(
//                   text: "go to login",
//                   onPressed: () {
//                     ScusessResetpasswordcontroller.gotoPagelogin();
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//===================

import 'package:flutter/material.dart';

import '../../../../core/const/color.dart';
import '../../auth_widget/auth/Custombuttomauth.dart';
import '../login.dart';



// class ScusessResetpassword extends StatelessWidget {
//   const ScusessResetpassword({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(

//       // appBar: AppBar(
//       //   centerTitle: true,
//       //   backgroundColor: ColorAPP.background,
//       //   elevation: 0.0,
//       //   title:const Text("scusess ",
           
//       //          style:
//       //          TextStyle(fontSize:60, color:ColorAPP.black,fontWeight: FontWeight.bold)
//       //           ),
//       // ),
//       body:
      
//        Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//           const  Center(
//               child: Icon(
//                 Icons.check_circle_outline,
//                 size: 350,
//                 color: ColorAPP.blue,
//               ),
//             ),
//           const  Text("scusess" , style:
//                TextStyle(fontSize:45, color:ColorAPP.black,fontWeight: FontWeight.bold)),
//          const   SizedBox(height: 30),
//             Container(
// width: 290,
//               child: CustomButtomauth(
//                   text: "go to login",
//                   onPressed: () {
//                     // ScusessResetpasswordcontroller.gotoPagelogin();
//                        Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>  Login(),
//                             ),
//                           );
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
class ScusessResetpassword extends StatefulWidget {
  const ScusessResetpassword({super.key});

  @override
  State<ScusessResetpassword> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScusessResetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: ColorAPP.background,
      //   elevation: 0.0,
      //   title:const Text("scusess ",
           
      //          style:
      //          TextStyle(fontSize:60, color:ColorAPP.black,fontWeight: FontWeight.bold)
      //           ),
      // ),
      body:
      
       Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const  Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 350,
                color: ColorAPP.blue,
              ),
            ),
          const  Text("scusess" , style:
               TextStyle(fontSize:45, color:ColorAPP.black,fontWeight: FontWeight.bold)),
         const   SizedBox(height: 30),
            Container(
width: 290,
              child: CustomButtomauth(
                  text: "go to login",
                  onPressed: () {
                    // ScusessResetpasswordcontroller.gotoPagelogin();
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Login(),
                            ),
                          );
                  }),
            )
          ],
        ),
      ),
    );
  }
}