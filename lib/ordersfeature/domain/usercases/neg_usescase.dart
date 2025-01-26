import '../resporitories/orders_repository.dart';

// class NegUsercase {

//     final OrdersRepository ordersRepository;

//  NegUsercase(this.ordersRepository);

  
//   call(){
//     return ordersRepository.neg();
//   }
// }

class NegUsercase{
  final OrdersRepository ordersRepository;

  NegUsercase(this.ordersRepository);
  call(){
    return ordersRepository.neg();
  }



}