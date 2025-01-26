



import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/class/StatusRequest.dart';

import '../../../core/class/handingdataview.dart';
import '../../../core/function/handlingdatacontroller.dart';
import '../../domain/resporitories/orders_repository.dart';
import '../data_remote/data_remote.dart';
import '../model/carsmodels.dart';
import '../model/jsonholder.dart';
import '../model/ordersmodel.dart';

class OrdersRepositoryImp implements OrdersRepository {
//  late  final StatusRequest statusRequest;
final SharedPreferences sharedPreferences;
  final RemoteDataSource remoteDataSource;
  int count = 0;
  List<CarsModel> cardata = [];
  OrdersRepositoryImp( {required this.remoteDataSource ,
   required this.sharedPreferences});

  @override
  add() {
    count = count;
  }

  @override
  neg() {
    count = count;
  }

  @override
  getApproveOrders() async {
    // statusRequest = StatusRequest.loading; // for  loading
    List<OrdersModel> data = [];
    var response = await remoteDataSource
        .getApproveOrders(sharedPreferences.getString("id")!);
    // var response = await remoteDataSource.getApproveOrders("44");

    print(" function//**************** $response");
  StatusRequest  statusRequest = handdlingData(response);

    // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
        return data;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  @override
  getArchiveOrders() async {
    List<OrdersModel> data = [];
    // statusRequest = StatusRequest.loading;

    var response = await remoteDataSource
        .getArchiveOrders(sharedPreferences.getString("id")!);
    // var response = await remoteDataSource.getArchiveOrders("44");
    print("=============================== Controller $response ");
  StatusRequest  statusRequest = handdlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
        return data;
      }
       else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  @override
  getdataservice(String carsbrand) async {

    List<CarsModel> cardata = [];
    var response = await remoteDataSource.getdataservice(carsbrand);

    print(" getdataservice//**************** $response");
   StatusRequest statusRequest = handdlingData(response);
    HandingDataView (statusRequest: statusRequest);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List responsedata = response['data'];
        cardata.addAll(responsedata.map((e) => CarsModel.fromJson(e)));
        return cardata;
      } 
      else {
  return   
      StatusRequest.failure;
      
  // //         //  HandingDataView (statusRequest: statusRequest);
  //         return statusRequest;
      }
    }
  }

  //   @override
  // getdataservice(String carsbrand) async {

  //   List<lsonholder> cardata = [];
  //   var response = await remoteDataSource.getdataservice(carsbrand);

  //   print(" getdataservice//**************** $response");
  //  StatusRequest statusRequest = handdlingData(response);
  //   HandingDataView (statusRequest: statusRequest);

  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       List responsedata = response['data'];
  //       cardata.addAll(responsedata.map((e) => lsonholder.fromJson(e)));
  //       return cardata;
  //     } 
  //     else {
  // return   
  //     StatusRequest.failure;
      
  // // //         //  HandingDataView (statusRequest: statusRequest);
  // //         return statusRequest;
  //     }
  //   }
  // }
//===================
  @override

//======
  @override
  getpendingOrders() async {
    List<OrdersModel> penddata = [];
    print(sharedPreferences.getString(
            "id")!);
    var response = await remoteDataSource.getpendingOrders(
        sharedPreferences.getString(
            "id")!); // getData for test_data page == it post data to url test
    // var response = await remoteDataSource.getpendingOrders("44");
    print("**************** $response");
   StatusRequest statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List responsedata = response['data'];
        penddata.addAll(responsedata.map((e) => OrdersModel.fromJson(e)));
        return penddata;
      } else {
        return statusRequest;
      }
    }
  }

  @override
  deletOrders(String ordersid) async {
    var response = await remoteDataSource.deletOrders(
        ordersid); // getData for test_data page == it post data to url test

    print("**************** $response");
   StatusRequest statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }
  //==============
  // @override
  // getCheckout(String usersid, String orderscarsid, String ordersnumberday, String orderscarprice, String ordersdriverprice, String ordersbookdate, String orderstotalprice) {
  //   // TODO: implement getCheckout
  //   throw UnimplementedError();
  // }
  //===========

  // @override
  // getCheckout(Map data) async {
  //   var response = await remoteDataSource.getCheckout(data);

  //   print("**************** $response");
  // StatusRequest  statusRequest = handdlingData(
  //       response); // it give statusrequest error or statusrequest sucess
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       // Get.toNamed(
  //       //   AppRoutes.sucesspage,
  //       // );
  //     }
  //   } else {
  //     // Get.snackbar("warm", "please complet form");
  //   }
  // }

  @override
  getCheckout(Map data) async {
    var response = await remoteDataSource.getCheckout(data);

    print("**************** $response");
  StatusRequest  statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // Get.toNamed(
        //   AppRoutes.sucesspage,
        // );
        print("okkk");
      }
    } else {
      // Get.snackbar("warm", "please complet form");
        print("bad");
    }
  }
  @override
  getMaintingOrders() async {
    List<OrdersModel> data = [];

    var response = await remoteDataSource
        .getMaintingOrders(sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
  StatusRequest  statusRequest = handdlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
        return data;
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }
}
//============ sherif 


// import 'package:dartz/dartz.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../core/class/StatusRequest.dart';

// import '../../../core/class/handingdataview.dart';
// import '../../../core/function/handlingdatacontroller.dart';
// import '../../domain/resporitories/orders_repository.dart';
// import '../data_remote/data_remote.dart';
// import '../model/carsmodels.dart';
// import '../model/ordersmodel.dart';

// class OrdersRepositoryImp implements OrdersRepository {
//   late final StatusRequest statusRequest;
//   late final SharedPreferences sharedPreferences;
//   final RemoteDataSource remoteDataSource;
//   int count = 0;
//   List<CarsModel> cardata = [];
//   OrdersRepositoryImp({required this.remoteDataSource});

//   @override
//   add() {
//     count = count;
//   }

//   @override
//   neg() {
//     count = count;
//   }

//   @override
//   getApproveOrders() async {
//     // statusRequest = StatusRequest.loading; // for  loading
//     List<OrdersModel> data = [];
//     // var response = await remoteDataSource
//     //     .getApproveOrders(sharedPreferences.getString("id")!);
//     var response = await remoteDataSource.getApproveOrders("44");

//     print(" function//**************** $response");
//     statusRequest = handdlingData(response);

//     // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//         data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//         return data;
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//   }

//   @override
//   getArchiveOrders() async {
//     List<OrdersModel> data = [];
//     // statusRequest = StatusRequest.loading;

//     // var response = await remoteDataSource
//     //     .getArchiveOrders(sharedPreferences.getString("id")!);
//     var response = await remoteDataSource.getArchiveOrders("44");
//     print("=============================== Controller $response ");
//     statusRequest = handdlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//         data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//         return data;
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//   }
// //==================================
//   @override
//   getdataservice(String carsbrand) async {

//     List<CarsModel> cardata = [];
//     var response = await remoteDataSource.getdataservice(carsbrand);

//     print(" getdataservice//**************** $response");
//     statusRequest = handdlingData(response);
//     HandingDataView (statusRequest: statusRequest);

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List responsedata = response['data'];
//         cardata.addAll(responsedata.map((e) => CarsModel.fromJson(e)));
//         return cardata;
//       } else {
//   return      statusRequest = StatusRequest.failure;
//           //  HandingDataView (statusRequest: statusRequest);
//           // return statusRequest;
//       }
//     }
//   }
// //===================
//   @override

// //======
//   @override
//   getpendingOrders() async {
//     List<OrdersModel> penddata = [];
//     // var response = await remoteDataSource.getpendingOrders(
//     //     sharedPreferences.getString(
//     //         "id")!); // getData for test_data page == it post data to url test
//     var response = await remoteDataSource.getpendingOrders("44");
//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List responsedata = response['data'];
//         penddata.addAll(responsedata.map((e) => OrdersModel.fromJson(e)));
//         return penddata;
//       } else {
//         return statusRequest;
//       }
//     }
//   }

//   @override
//   deletOrders(String ordersid) async {
//     var response = await remoteDataSource.deletOrders(
//         ordersid); // getData for test_data page == it post data to url test

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//   }


//   @override
//   getCheckout(Map data) async {
//     var response = await remoteDataSource.getCheckout(data);

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         // Get.toNamed(
//         //   AppRoutes.sucesspage,
//         // );
//       }
//     } else {
//       // Get.snackbar("warm", "please complet form");
//     }
//   }

//   @override
//   getMaintingOrders() async {
//     List<OrdersModel> data = [];

//     var response = await remoteDataSource
//         .getMaintingOrders(sharedPreferences.getString("id")!);
//     print("=============================== Controller $response ");
//     statusRequest = handdlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//         data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//         return data;
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//   }

//   // @override
//   // Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) {
//   //   // TODO: implement postData
//   //   throw UnimplementedError();
//   // }
// }
//=================radda

// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:rentcarbloc/ordersfeature/domain/enities/orders.dart';

// import 'package:rentcarbloc/ordersfeature/domain/enities/cars.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../core/class/StatusRequest.dart';
// import '../../../core/class/handingdataview.dart';
// import '../../../core/error/exceptions.dart';
// import '../../../core/error/failures.dart';
// import '../../../core/function/handlingdatacontroller.dart';
// import '../../../core/network/network_info.dart';
// import '../../domain/resporitories/orders_repository.dart';
// import '../data_remote/data_remote.dart';



// typedef Future<Unit> DeleteOrUpdateOrAddPost();

// class OrdersRepositoryImp implements OrdersRepository {
//   // late final StatusRequest statusRequest;
//   // late final SharedPreferences sharedPreferences;
//   final RemoteDataSource remoteDataSource;
//   int count = 0;

//   final NetworkInfo networkInfo;
//   OrdersRepositoryImp({required this.networkInfo,
//       required this.remoteDataSource});

//   @override
//   add() {
//     count = count;
//   }

//   @override
//   neg() {
//     count = count;
//   }

//   // @override
//   // getApproveOrders() async {
//   //   // statusRequest = StatusRequest.loading; // for  loading
//   //   List<OrdersModel> data = [];
//   //   // var response = await remoteDataSource
//   //   //     .getApproveOrders(sharedPreferences.getString("id")!);
//   //   var response = await remoteDataSource.getApproveOrders("44");

//   //   print(" function//**************** $response");
//   //   statusRequest = handdlingData(response);

//   //   // it give statusrequest error or statusrequest sucess

//   //   if (StatusRequest.success == statusRequest) {
//   //     if (response['status'] == "success") {
//   //       List listdata = response['data'];
//   //       data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//   //       return data;
//   //     } else {
//   //       statusRequest = StatusRequest.failure;
//   //     }
//   //   }
//   // }

//   // @override
//   // getArchiveOrders() async {
//   //   List<OrdersModel> data = [];
//   //   // statusRequest = StatusRequest.loading;

//   //   // var response = await remoteDataSource
//   //   //     .getArchiveOrders(sharedPreferences.getString("id")!);
//   //   var response = await remoteDataSource.getArchiveOrders("44");
//   //   print("=============================== Controller $response ");
//   //   statusRequest = handdlingData(response);
//   //   if (StatusRequest.success == statusRequest) {
//   //     // Start backend
//   //     if (response['status'] == "success") {
//   //       List listdata = response['data'];
//   //       data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//   //       return data;
//   //     } else {
//   //       statusRequest = StatusRequest.failure;
//   //     }
//   //     // End
//   //   }
//   // }
// //==================================
//   // @override
//   // Future<Either<Failure, List<Cars>>> getdataservice(String carsbrand) async {
//   //      if (await networkInfo.isConnected) {
//   //     try {
//   //       final response = await remoteDataSource.getdataservice(carsbrand);
//   //       // print("**************** $response");
//   //       return Right(response);
//   //     } on ServerException {
//   //       return Left(ServerFailure()); // have connect but have error in service
//   //     }
//   //   } 
//   //   else {
//   //     return Left(EmptyCacheFailure()); // not have post in local
//   //   }
//   // }

// //===================
//   @override

// //======
//   // @override
//   // getpendingOrders() async {
//   //   List<OrdersModel> penddata = [];
//   //   // var response = await remoteDataSource.getpendingOrders(
//   //   //     sharedPreferences.getString(
//   //   //         "id")!); // getData for test_data page == it post data to url test
//   //   var response = await remoteDataSource.getpendingOrders("44");
//   //   print("**************** $response");
//   //   statusRequest = handdlingData(
//   //       response); // it give statusrequest error or statusrequest sucess

//   //   if (StatusRequest.success == statusRequest) {
//   //     if (response['status'] == "success") {
//   //       List responsedata = response['data'];
//   //       penddata.addAll(responsedata.map((e) => OrdersModel.fromJson(e)));
//   //       return penddata;
//   //     } else {
//   //       return statusRequest;
//   //     }
//   //   }
//   // }

//   @override
//    Future<Either<Failure, Unit>>  deletOrders(String ordersid) async {
   
//     return await _getMessage(() {
//       return remoteDataSource.deletOrders(
//         ordersid); // getData for test_data pag
//     });
//   }
//   //==============
//   // @override
//   // getCheckout(String usersid, String orderscarsid, String ordersnumberday, String orderscarprice, String ordersdriverprice, String ordersbookdate, String orderstotalprice) {
//   //   // TODO: implement getCheckout
//   //   throw UnimplementedError();
//   // }
//   //===========

//   @override
//   Future<Either<Failure, Unit>> getCheckout(Map data) async {
   
//    return await _getMessage(() {
//       return remoteDataSource.getCheckout(data);
//     });

   
//   }

//   // @override
//   // getMaintingOrders() async {
//   //   List<OrdersModel> data = [];

//   //   var response = await remoteDataSource
//   //       .getMaintingOrders(sharedPreferences.getString("id")!);
//   //   print("=============================== Controller $response ");
//   //   statusRequest = handdlingData(response);
//   //   if (StatusRequest.success == statusRequest) {
//   //     // Start backend
//   //     if (response['status'] == "success") {
//   //       List listdata = response['data'];
//   //       data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//   //       return data;
//   //     } else {
//   //       statusRequest = StatusRequest.failure;
//   //     }
//   //     // End
//   //   }
//   // }

//   Future<Either<Failure, Unit>> _getMessage(
//       DeleteOrUpdateOrAddPost deleteOrUpdateOrAddPost) async {
//     if (await networkInfo.isConnected) {
//       try {
//         await deleteOrUpdateOrAddPost();
//         return Right(unit);
//       } on ServerException {
//         return Left(ServerFailure());
//       }
//     } else {
//       return Left(OfflineFailure());
//     }
//   }
  
//   @override
//   Future<Either<Failure, List<Cars>>> getdataservice(String carsbrand)async {
//       if (await networkInfo.isConnected) {
//       try {
//         var response = await remoteDataSource.getdataservice(carsbrand) ;
//         print("**************** $response");
//         return Right(response);
//       } on ServerException {
//         return Left(ServerFailure()); // have connect but have error in service
//       }
//     } 
//     else {
//       return Left(EmptyCacheFailure()); // not have post in local
//     }
//   }
// }
