import 'package:rentcarbloc/ordersfeature/data/respotories/orders_respositoryImp.dart';

import '../resporitories/orders_repository.dart';

class AddUsescase{
  final OrdersRepository ordersRepository;

  // AddUsescase(this.ordersRepository);
  // call(){
  //   return ordersRepository.add();
  // }


 AddUsescase(this.ordersRepository,);
  call(){
    return ordersRepository.add();
  }

}