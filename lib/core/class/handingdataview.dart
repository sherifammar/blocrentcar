
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../ordersfeature/present/widget/snackbar_message.dart';
import '../const/imageasset.dart';
import 'StatusRequest.dart';

// class HandingDataView extends StatelessWidget {
//   final StatusRequest statusRequest; // error solved => add -->final
//   final Widget widget;
//   const HandingDataView(
//       {super.key, required this.statusRequest, required this.widget});

//   @override
//   Widget build(BuildContext context) {
//     return statusRequest == StatusRequest.loading
//         ? Center(
//             child: Lottie.asset(ImageAsset.loading, width: 250, height: 250),
//           )
//         : statusRequest == StatusRequest.offlinefailure
//             ? Center(
//                 child:
//                     Lottie.asset(ImageAsset.offline, width: 250, height: 250),
//               )
//             : statusRequest == StatusRequest.servicefailure
//                 ? Center(
//                     child: Lottie.asset(ImageAsset.service,
//                         width: 250, height: 250),
//                   )
//                 : statusRequest == StatusRequest.failure
//                     ? Center(
//                         child: Lottie.asset(ImageAsset.notdata,
//                             width: 250, height: 250),
//                       )
//                     : widget;
//   }
// }
// ==========================================
class HandingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest; // error solved => add -->final
  final Widget widget;
  const HandingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? 
        Center(
            child: Lottie.asset(ImageAsset.loading, width: 250, height: 250),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child:
                    Lottie.asset(ImageAsset.offline, width: 250, height: 250),
              )
            : statusRequest == StatusRequest.servicefailure
                ? Center(
                    child: Lottie.asset(ImageAsset.service,
                        width: 250, height: 250),
                  )
                : widget;
  }
}

//=====================
// class HandingDataView extends StatelessWidget {
//   final StatusRequest statusRequest; // error solved => add -->final
//   final Widget widget;
//   const HandingDataView(
//       {super.key, required this.statusRequest, required this.widget});

//   @override
//   Widget build(BuildContext context) {
//     if (statusRequest == StatusRequest.loading) {
//       return
//        SnackBarMessage().showErrorSnackBar(
//                     message: "loading", context: context);
//     } else {
//       if (statusRequest == StatusRequest.offlinefailure) {
//         return
//          SnackBarMessage().showErrorSnackBar(
//                     message: "offline", context: context);
//       } else {
//         if (statusRequest == StatusRequest.servicefailure) {
//           return
//            SnackBarMessage().showErrorSnackBar(
//                     message: "service faliure", context: context);
//         } else {
//           if (statusRequest == StatusRequest.failure) {
//             return 
//             SnackBarMessage().showErrorSnackBar(
//                     message: "failure", context: context);
//           } else {
//             return widget;
//           }
//         }
//       }
//     }
//   }
// }
//================


// //=====================
class HandingDataView extends StatelessWidget {
  final StatusRequest statusRequest; // error solved => add -->final
  // final Widget widget;
  // const HandingDataView(
  //     {super.key, required this.statusRequest, required this.widget});
      const HandingDataView(
      {super.key, required this.statusRequest});

  @override
  Widget build(BuildContext context) {
     return statusRequest == StatusRequest.loading ?
      
       SnackBarMessage().showErrorSnackBar(
                    message: "loading", context: context):
   
      statusRequest == StatusRequest.offlinefailure
        ?
         SnackBarMessage().showErrorSnackBar(
                    message: "offline", context: context):
  
        statusRequest == StatusRequest.servicefailure ?
       
           SnackBarMessage().showErrorSnackBar(
                    message: "service faliure", context: context):
    
          statusRequest == StatusRequest.failure ?
            
            SnackBarMessage().showErrorSnackBar(
                    message: "failure", context: context):null;
          
             
          }
        }
      

// class HandingDataView extends StatelessWidget {
//   final StatusRequest statusRequest; // error solved => add -->final
//   // final Widget widget;
//   // const HandingDataView(
//   //     {super.key, required this.statusRequest, required this.widget});
//       const HandingDataView(
//       {super.key, required this.statusRequest});

//   @override
//   Widget build(BuildContext context) {
//      return statusRequest == StatusRequest.loading ?
      
//       showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: const Text('loading'),
//                           content: Text("please wait"),
//                         );
//                       }):
   
//       statusRequest == StatusRequest.offlinefailure
//         ?
//             showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: const Text('warm'),
//                           content: Text("off line"),
//                         );
//                       }):
  
//         statusRequest == StatusRequest.servicefailure ?
       
//                showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: const Text('error service'),
//                           content: Text("service faliure"),
//                         );
//                       }):
    
//           statusRequest == StatusRequest.failure 
//              showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: const Text('error service'),
//                           content: Text("service faliure"),
//                         );
//                       })
          
             
//           }
//         }

      