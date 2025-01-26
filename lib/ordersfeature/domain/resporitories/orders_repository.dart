// import 'package:dartz/dartz.dart';

// import '../../../core/class/StatusRequest.dart';
// import '../../data/model/carsmodels.dart';
// import '../enities/cars.dart';
// import '../enities/orders.dart';

// abstract class OrdersRepository {
//   //=record controller
//   getpendingOrders();
//   deletOrders(String ordersid);
//   getApproveOrders( );
//   getArchiveOrders();
//   getMaintingOrders();

//   // checkout controller

//   add();
//   neg();

//     getCheckout(
//       Map data

//   );

//   // ===== carcontroller
//   getdataservice(String carsbrand);

// // Future<Either<StatusRequest, List<CarsModel>>>  getdataservice(String carsbrand);
// }
//========== sherif


abstract class OrdersRepository {
  //=record controller
  getpendingOrders();
  deletOrders(String ordersid);
  getApproveOrders();
  getArchiveOrders();
  getMaintingOrders();

   add();
  neg();

  getCheckout(Map data);

  // ===== carcontroller
  getdataservice(String carsbrand);

//  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data);
}
//========================= raddaaaa
// import 'package:dartz/dartz.dart';



// import '../../../core/error/failures.dart';

// import '../enities/cars.dart';


// abstract class OrdersRepository {
//   //=record controller

//   Future<Either<Failure, Unit>> deletOrders(String ordersid);
//   Future<Either<Failure, List<Cars>>> getdataservice(String carsbrand);
//   Future<Either<Failure, Unit>> getCheckout(Map data);

//   // Future<Either<Failure, List<OrdersModel>>> getpendingOrders();
//     // Future<Either<Failure, List<OrdersModel>>> getApproveOrders();
//   // Future<Either<Failure, List<OrdersModel>>> getArchiveOrders();
//   // Future<Either<Failure, List<OrdersModel>>> getMaintingOrders();
//   add();
//   neg();

// }
