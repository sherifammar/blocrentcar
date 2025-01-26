import '../resporitories/orders_repository.dart';

class GetApproveOrdersUsercase {
    final OrdersRepository ordersRepository;

  GetApproveOrdersUsercase(this.ordersRepository);

   call() async {
    return await ordersRepository.getApproveOrders( );
  }
  
}