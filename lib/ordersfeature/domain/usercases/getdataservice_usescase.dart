// import 'package:dartz/dartz.dart';
// import 'package:rentcarbloc/ordersfeature/data/model/carsmodels.dart';

// import '../../../core/error/failures.dart';
// import '../enities/cars.dart';
// import '../resporitories/orders_repository.dart';

// class GetdataserviceUsescase {
//   final OrdersRepository ordersRepository;

//   GetdataserviceUsescase(this.ordersRepository);
//   Future<Either<Failure, List<Cars>>> call(String carsbrand) async{
//     return await ordersRepository.getdataservice(carsbrand);
//   }
// }
//==============


import '../resporitories/orders_repository.dart';

class GetdataserviceUsescase {
  final OrdersRepository ordersRepository;

  GetdataserviceUsescase(this.ordersRepository);
   call(String carsbrand) async{
    return await ordersRepository.getdataservice(carsbrand);
  }
}
