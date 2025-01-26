import '../resporitories/orders_repository.dart';

class GetMaintingOrdersUsercase {
   final OrdersRepository ordersRepository;
   GetMaintingOrdersUsercase( this.ordersRepository);

  call() async {
    return await ordersRepository.getMaintingOrders();}
  
}