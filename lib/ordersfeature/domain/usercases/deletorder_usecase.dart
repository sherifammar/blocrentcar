// import 'package:dartz/dartz.dart';

// import '../../../core/error/failures.dart';
// import '../enities/orders.dart';
// import '../resporitories/orders_repository.dart';

// class DeletOrdersUsescase {
//   final OrdersRepository ordersRepository;

//   DeletOrdersUsescase(this.ordersRepository);

//  Future<Either<Failure, Unit>>  call(String ordersid) async {
//     return await ordersRepository.deletOrders(ordersid);
  
// }}

//================
import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../enities/orders.dart';
import '../resporitories/orders_repository.dart';

class DeletOrdersUsescase {
  final OrdersRepository ordersRepository;

  DeletOrdersUsescase(this.ordersRepository);

  call(String ordersid) async {
    return await ordersRepository.deletOrders(ordersid);
  
}}