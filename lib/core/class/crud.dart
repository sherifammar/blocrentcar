import 'dart:convert';
import 'package:dartz/dartz.dart';
import '../function/checkinternet.dart';
import 'StatusRequest.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    // try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);

        print(' crude == > ${response.statusCode }'); 
        // print 200
        if (response.statusCode == 200 || response.statusCode == 201) {

            Map responsebody = jsonDecode(response.body);
            
          print(responsebody);
          return Right(responsebody); // right == map data
        } else {
          return const Left(StatusRequest.servicefailure);
        }
      } else {
        return const Left(
            StatusRequest.offlinefailure); // left == statusrequest
      }
    // } catch (_) {
    //   return Left(StatusRequest.serverexcepation);
    // }
  }

  //==========
    

}

// // //================= radda
// // import 'dart:convert';
// // import 'package:dartz/dartz.dart';
// // import '../function/checkinternet.dart';
// // import 'StatusRequest.dart';
// // import 'package:http/http.dart' as http;

// // class Crud {
// //   Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
// //     // try {
// //       if (await checkInternet()) {
// //         var response = await http.post(Uri.parse(linkurl), body: data);

// //         print(' crude == > ${response.statusCode }'); 
// //         // print 200
// //         if (response.statusCode == 200 || response.statusCode == 201) {

// //             Map responsebody = jsonDecode(response.body);
            
// //           print(responsebody);
// //           return Right(responsebody); // right == map data
// //         } else {
// //           return const Left(StatusRequest.servicefailure);
// //         }
// //       } else {
// //         return const Left(
// //             StatusRequest.offlinefailure); // left == statusrequest
// //       }
// //     // } catch (_) {
// //     //   return Left(StatusRequest.serverexcepation);
// //     // }
// //   }

// //   //   String _mapFailureToMessage(StatusRequest  statusRequest) {
// //   //   switch (statusRequest) {
      
// //   //     case StatusRequest.failure:
// //   //       return "failure";
// //   //     case StatusRequest.loading:
// //   //       return "loading";
// //   //     case StatusRequest.offlinefailure:
// //   //       return "offlinefailure";
   
// //   //     default:
// //   //       return "Unexpected Error , Please try again later .";
// //   //   }
// //   // }
  
// // }

// //============================
// // import 'dart:convert';
// // import 'package:dartz/dartz.dart';
// // import '../function/checkinternet.dart';
// // import 'StatusRequest.dart';
// // import 'package:http/http.dart' as http;

// // class Crud {
// //   Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
// //     // try {
// //       if (await checkInternet()) {
// //         var response = await http.post(Uri.parse(linkurl), body: data);

// //         print(' crude == > ${response.statusCode }'); 
// //         // print 200
// //         if (response.statusCode == 200 || response.statusCode == 201) {

// //             Map responsebody = jsonDecode(response.body);
            
// //           print(responsebody);
// //           return Right(responsebody); // right == map data
// //         } else {
// //           return const Left(StatusRequest.servicefailure);
// //         }
// //       } else {
// //         return const Left(
// //             StatusRequest.offlinefailure); // left == statusrequest
// //       }
// //     // } catch (_) {
// //     //   return Left(StatusRequest.serverexcepation);
// //     // }
// //   }
// // }

// //=================
// // import 'dart:convert';
// // import 'package:dartz/dartz.dart';
// // import '../error/exceptions.dart';
// // import '../function/checkinternet.dart';
// // import 'StatusRequest.dart';
// // import 'package:http/http.dart' as http;

// // class Crud {
// //    postData(String linkurl, Map data) async {
// //     // try {
// //       if (await checkInternet()) {
// //         var response = await http.post(Uri.parse(linkurl), body: data);

// //         print(' crude == > ${response.statusCode }'); 
// //         // print 200
// //         if (response.statusCode == 200 || response.statusCode == 201) {

// //             final List  responsebody = jsonDecode(response.body) as List;
            
// //           print(responsebody);
// //           return responsebody; // right == map data
// //         } else {
// //          throw ServerException();
// //         }
// //       } else {
// //          throw ServerException(); // left == statusrequest
// //       }
// //     // } catch (_) {
// //     //   return Left(StatusRequest.serverexcepation);
// //     // }
// //   }

 
  
// // }
//==============
