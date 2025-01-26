import '../resporitories/orders_repository.dart';

class GetArchiveOrdersUsercase {
   final OrdersRepository ordersRepository;

  GetArchiveOrdersUsercase(this.ordersRepository);

  call() async {
    return await ordersRepository.getArchiveOrders( );
  }
  
}