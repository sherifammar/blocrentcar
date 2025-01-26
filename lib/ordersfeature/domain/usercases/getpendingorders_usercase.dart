import 'package:rentcarbloc/ordersfeature/data/respotories/orders_respositoryImp.dart';

import '../resporitories/orders_repository.dart';

class GetpendingOrdersUsercase {
  final OrdersRepository ordersRepository;
  GetpendingOrdersUsercase(  this.ordersRepository);
  
  call() async {
    return await ordersRepository.getpendingOrders( );
  }
  
  
}