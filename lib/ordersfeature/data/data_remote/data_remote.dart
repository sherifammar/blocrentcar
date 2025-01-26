import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/class/crud.dart';
import '../../../core/const/linkapi.dart';
import '../../../core/function/checkinternet.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDataSource {
  //=record controller
  getpendingOrders(String usersid);
  deletOrders(String ordersid);
  getApproveOrders(String usersid);
  getArchiveOrders(String usersid);
  getMaintingOrders(String usersid);
  getCheckout(Map data);
  getdataservice(String carsbrand);
}

class RemoteDataSourceImp implements RemoteDataSource {
  Crud crud;
  RemoteDataSourceImp({required this.crud});

  @override
  deletOrders(String ordersid) async {
    var response =
        await crud.postData('${AppLink.deletorders}', {'ordersid': ordersid});

    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  @override
  getApproveOrders(String usersid) async {
    var response = await crud
        .postData(AppLink.approveorders, {"usersid": usersid}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  @override
  getArchiveOrders(String usersid) async {
    var response =
        await crud.postData(AppLink.archive, {"usersid": usersid}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  @override
  getCheckout(Map data) async {
    var response = await crud.postData(AppLink.checkout, data); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }
  

  @override
  getMaintingOrders(String usersid) async {
    var response = await crud
        .postData(AppLink.undermaint, {"usersid": usersid}); // {}== map
    return response.fold((l) => l, (r) => r); // error => l not 1
  }

  @override
  getdataservice(String carsbrand) async {
    var response =
        await crud.postData(AppLink.cars, {"carsbrand": carsbrand}); // {}== map
    return response.fold((l) => l, (r) => r);
  }

  @override
  getpendingOrders(String usersid) async {
    var response =
        await crud.postData(AppLink.pending, {"usersid": usersid}); // {}== map
    return response.fold(
        (l) => l, (r) => r); // error => l not 1mplementedError();
  }
}
//===================== sherif 
// import 'dart:convert';

// import 'package:dartz/dartz.dart';

// import '../../../core/class/StatusRequest.dart';
// import '../../../core/class/crud.dart';
// import '../../../core/const/linkapi.dart';
// import '../../../core/function/checkinternet.dart';
// import 'package:http/http.dart' as http;

// abstract class RemoteDataSource {
//   //=record controller
//   getpendingOrders(String usersid);
//   deletOrders(String ordersid);
//   getApproveOrders(String usersid);
//   getArchiveOrders(String usersid);
//   getMaintingOrders(String usersid);
//   getCheckout(Map data);
//   getdataservice(String carsbrand);
//   Future<Either<StatusRequest, Map>> postData(String linkurl, Map data);
// }

// class RemoteDataSourceImp implements RemoteDataSource {
//    @override
//   deletOrders(String ordersid) async {
//     var response =
//         await postData('${AppLink.deletorders}', {'ordersid': ordersid});

//     return response.fold((l) => l, (r) => r); // error => l not 1
//   }

//   @override
//   getApproveOrders(String usersid) async {
//     var response = await postData(AppLink.approveorders, {"usersid": usersid}); // {}== map
//     return response.fold((l) => l, (r) => r); // error => l not 1
//   }

//   @override
//   getArchiveOrders(String usersid) async {
//     var response =
//         await postData(AppLink.archive, {"usersid": usersid}); // {}== map
//     return response.fold((l) => l, (r) => r); // error => l not 1
//   }

//   @override
//   getCheckout(Map data) async {
//     var response = await postData(AppLink.checkout, data); // {}== map
//     return response.fold((l) => l, (r) => r); // error => l not 1
//   }

//   @override
//   getMaintingOrders(String usersid) async {
//     var response = await postData(AppLink.undermaint, {"usersid": usersid}); // {}== map
//     return response.fold((l) => l, (r) => r); // error => l not 1
//   }

//   @override
//   getdataservice(String carsbrand) async {
//     var response =
//         await postData(AppLink.cars, {"carsbrand": carsbrand}); // {}== map
//     return response.fold((l) => l, (r) => r);
//   }

//   @override
//   getpendingOrders(String usersid) async {
//     var response =
//         await postData(AppLink.pending, {"usersid": usersid}); // {}== map
//     return response.fold(
//         (l) => l, (r) => r); // error => l not 1mplementedError();
//   }
// @override
//   Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
//     // try {
//       if (await checkInternet()) {
//         var response = await http.post(Uri.parse(linkurl), body: data);

//         print(' crude == > ${response.statusCode }'); 
//         // print 200
//         if (response.statusCode == 200 || response.statusCode == 201) {

//             Map responsebody = jsonDecode(response.body);
            
//           print(responsebody);
//           return Right(responsebody); // right == map data
//         } else {
//           return const Left(StatusRequest.servicefailure);
//         }
//       } else {
//         return const Left(
//             StatusRequest.offlinefailure); // left == statusrequest
//       }
//     // } catch (_) {
//     //   return Left(StatusRequest.serverexcepation);
//     // }
//   }
// }


// //***************** radad */

// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:rentcarbloc/ordersfeature/data/model/carsmodels.dart';

// import '../../../core/class/StatusRequest.dart';
// import '../../../core/class/crud.dart';
// import '../../../core/const/linkapi.dart';
// import '../../../core/error/exceptions.dart';
// import '../../../core/error/failures.dart';
// import '../../../core/function/checkinternet.dart';
// import 'package:http/http.dart' as http;

// import '../../domain/enities/cars.dart';
// import '../model/ordersmodel.dart';

// abstract class RemoteDataSource {
//   //=record controller

//   Future<Unit> deletOrders(String ordersid);
//   Future<List<CarsModel>> getdataservice(String carsbrand);
//   Future<Unit> getCheckout(Map data);

//   //   Future<List<OrdersModel>> getApproveOrders();
//   // Future<List<OrdersModel>> getArchiveOrders();
//   // Future<List<OrdersModel>> getMaintingOrders();
//   //  Future<List<OrdersModel>> getpendingOrders();
// }

// class RemoteDataSourceImp implements RemoteDataSource {
//   // Crud crud;
//   RemoteDataSourceImp();


//   @override
//   Future<Unit> deletOrders(String ordersid) async {
//     var response =
//         await postData('${AppLink.deletorders}', {'ordersid': ordersid});
//     if (response.statusCode == 200) {
//       return Future.value(unit);
//     } else {
//       throw ServerException();
//     }
//     // error => l not 1
//   }
//   @override
//   Future<List<CarsModel>> getdataservice(String carsbrand  ) async {
//     final response =
//         await http.get(Uri.parse(AppLink.cars/$carsbrand), ); // {}== map
      

//      if (response.statusCode == 200) {
//       final List decodedJson = json.decode(response.body) as List;
//       final List<CarsModel> carsModels = decodedJson
//           .map<CarsModel>((jsonPostModel) => CarsModel.fromJson(jsonPostModel))
//           .toList();
//   print(response.body);
//       return carsModels;
//     } else {
//       throw ServerException();
//     }
//   }

//   @override
//   Future<Unit> getCheckout(Map data) async {
//     var response = await postData(AppLink.checkout, data); // {}== map
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       return Future.value(unit);
//     } else {
//       throw ServerException();
//     }
//   }


//   postData(String linkurl, Map data) async {
//     return await http.post(Uri.parse(linkurl), body: data);
//   }
// }
