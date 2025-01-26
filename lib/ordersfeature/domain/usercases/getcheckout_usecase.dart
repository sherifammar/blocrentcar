// import 'package:dartz/dartz.dart';

// import '../../../core/error/failures.dart';
// import '../resporitories/orders_repository.dart';

// class  GetCheckoutUsercase{ 
//     final OrdersRepository ordersRepository;

//     GetCheckoutUsercase(this.ordersRepository);



//  Future<Either<Failure, Unit>>  call(Map data )
//   async {
//     return await ordersRepository.getCheckout(data
       
//     );

//   }
// }

import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../resporitories/orders_repository.dart';

class  GetCheckoutUsercase{ 
    final OrdersRepository ordersRepository;

    GetCheckoutUsercase(this.ordersRepository);



  call(Map data )
  async {
    return await ordersRepository.getCheckout(data
       
    );

  }
}