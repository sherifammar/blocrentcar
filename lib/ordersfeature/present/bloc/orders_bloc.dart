// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:rentcarbloc/ordersfeature/data/model/carsmodels.dart';
// import 'package:rentcarbloc/ordersfeature/data/model/ordersmodel.dart';

// import '../../../core/class/StatusRequest.dart';
// import '../../../core/class/failures.dart';
// import '../../../core/error/failures.dart';
// import '../../domain/enities/cars.dart';
// import '../../domain/enities/orders.dart';

// import '../../domain/usercases/addusescase.dart';
// import '../../domain/usercases/deletorder_usecase.dart';
// import '../../domain/usercases/getApproveOrders_usecase.dart';
// import '../../domain/usercases/getArchiveOrders_usescase.dart';
// import '../../domain/usercases/getMaintingOrders_usescase.dart';
// import '../../domain/usercases/getcheckout_usecase.dart';
// import '../../domain/usercases/getdataservice_usescase.dart';
// import '../../domain/usercases/getpendingorders_usercase.dart';
// import '../../domain/usercases/neg_usescase.dart';

// part 'orders_event.dart';
// part 'orders_state.dart';

// class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
//   final DeletOrdersUsescase deletOrdersUsescase;

//   final GetCheckoutUsercase getCheckoutUsercase;
//   final GetdataserviceUsescase getdataserviceUsescase;
//   final AddUsescase addUsescase;
//   final NegUsercase negUsercase;
//   int counter = 1;
//   late bool status;
// //  final GetMaintingOrdersUsercase getMaintingOrdersUsercase;
// //   final GetpendingOrdersUsercase getpendingOrdersUsercase;
// //     final GetApproveOrdersUsercase getApproveOrdersUsercase;
// //   final GetArchiveOrdersUsercase getArchiveOrdersUsercase;

//   OrdersBloc({
//     required this.deletOrdersUsescase,
//     required this.getCheckoutUsercase,
//     required this.getdataserviceUsescase,
//     required this.addUsescase,
//     required this.negUsercase,

//     // required this.getMaintingOrdersUsercase,
//     // required this.getpendingOrdersUsercase,
//     // required this.getArchiveOrdersUsercase,
//     // required this.getApproveOrdersUsercase,

//   }) : super(OrdersInitial()) {
//     on<OrdersEvent>((event, emit) async {

//       if (event is DeleteOrdersEvent) {
//         final result = await deletOrdersUsescase.call(event.carsId);
//         emit(DeleteOrdersState());
//         // emit(ErrorPostsState(message: _mapFailureToMessage(result)));
//       }
//       // else if (event is GetApproveOrdersEvent) {
//       //   final result = await getApproveOrdersUsercase.call();
//       //   emit(GetApproveOrdersState(orders: result));
//       //   //  emit(ErrorPostsState(message: _mapFailureToMessage(result)));
//       // }
//       //  else if (event is GetAchiveOrdersEvent) {
//       //   final result = await getArchiveOrdersUsercase.call();
//       //   emit(GetAchiveOrdersState(orders: result));
//       // }
//       else if (event is GetCheckoutEvent) {
//         final result = await getCheckoutUsercase.call(event.data);
//         emit(GetCheckoutState());
//       }
//        else if (event is GetDataServiceEvent) {
//         final result = await getdataserviceUsescase.call(event.carsbrand);

//         _mapFailureOrPostsToState(result);
//       }

//       //     else if (event is GetMaintingOrdersEvent) {
//       //       emit(GetMaintingOrdersState());
//       //     } else if (event is GetPendingeOrdersEvent) {
//       //       final result = await getpendingOrdersUsercase.call();
//       //       emit(GetPendingeOrdersState(orders: result));
//       //     }
//       //     else if(event is ErrorEvent){
//       // final result = await getpendingOrdersUsercase.call();

//       // emit(ErrorPostsState(message: _mapFailureToMessage(result)));

//       //     }

//       else if (event is AddEvent) {
//         emit(AddCountDateState(counter: ++counter));
//       } else if (event is NegEvent) {
//         emit(NegCountDateState(counter: --counter));
//       } else if (event is ChangeEvent) {
//         status = !status;
//         emit(ChangeState(status: status));
//       }

//     });
//     // int counter = 0;
//   }

//      OrdersState _mapFailureOrPostsToState(Either<Failure, List<Cars>> either) {
//     return either.fold(
//       (failure) => ErrorPostsState(message: _mapFailureToMessage(failure)),
//       (cars) => GetDataServiceState(cars: cars),
//     );
//   }

//   //==================
//   String _mapFailureToMessage(Failure failure) {
//     switch (failure.runtimeType) {
//       case ServerFailure:
//         return SERVER_FAILURE_MESSAGE;
//       case EmptyCacheFailure:
//         return EMPTY_CACHE_FAILURE_MESSAGE;
//       case OfflineFailure:
//         return OFFLINE_FAILURE_MESSAGE;
//       default:
//         return "Unexpected Error , Please try again later .";
//     }
//   }
// }
//==================
// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:rentcarbloc/ordersfeature/data/model/carsmodels.dart';
// import 'package:rentcarbloc/ordersfeature/data/model/ordersmodel.dart';

// import '../../../core/class/StatusRequest.dart';
// import '../../../core/class/failures.dart';
// import '../../../core/error/failures.dart';
// import '../../domain/enities/cars.dart';
// import '../../domain/enities/orders.dart';

// import '../../domain/usercases/addusescase.dart';
// import '../../domain/usercases/deletorder_usecase.dart';
// import '../../domain/usercases/getApproveOrders_usecase.dart';
// import '../../domain/usercases/getArchiveOrders_usescase.dart';
// import '../../domain/usercases/getMaintingOrders_usescase.dart';
// import '../../domain/usercases/getcheckout_usecase.dart';
// import '../../domain/usercases/getdataservice_usescase.dart';
// import '../../domain/usercases/getpendingorders_usercase.dart';
// import '../../domain/usercases/neg_usescase.dart';

// part 'orders_event.dart';
// part 'orders_state.dart';

// class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
//   final DeletOrdersUsescase deletOrdersUsescase;

//   final GetCheckoutUsercase getCheckoutUsercase;
//   final GetdataserviceUsescase getdataserviceUsescase;
//   final AddUsescase addUsescase;
//   final NegUsercase negUsercase;
//   int counter = 1;
//   late bool status;
// //  final GetMaintingOrdersUsercase getMaintingOrdersUsercase;
// //   final GetpendingOrdersUsercase getpendingOrdersUsercase;
// //     final GetApproveOrdersUsercase getApproveOrdersUsercase;
// //   final GetArchiveOrdersUsercase getArchiveOrdersUsercase;

//   OrdersBloc({
//     required this.deletOrdersUsescase,
//     required this.getCheckoutUsercase,
//     required this.getdataserviceUsescase,
//     required this.addUsescase,
//     required this.negUsercase,

//     // required this.getMaintingOrdersUsercase,
//     // required this.getpendingOrdersUsercase,
//     // required this.getArchiveOrdersUsercase,
//     // required this.getApproveOrdersUsercase,

//   }) : super(OrdersInitial()) {
//     on<OrdersEvent>((event, emit) async {

//       if (event is DeleteOrdersEvent) {
//         final result = await deletOrdersUsescase.call(event.carsId);
//         emit(DeleteOrdersState());
//         // emit(ErrorPostsState(message: _mapFailureToMessage(result)));
//       }
//       // else if (event is GetApproveOrdersEvent) {
//       //   final result = await getApproveOrdersUsercase.call();
//       //   emit(GetApproveOrdersState(orders: result));
//       //   //  emit(ErrorPostsState(message: _mapFailureToMessage(result)));
//       // }
//       //  else if (event is GetAchiveOrdersEvent) {
//       //   final result = await getArchiveOrdersUsercase.call();
//       //   emit(GetAchiveOrdersState(orders: result));
//       // }
//       else if (event is GetCheckoutEvent) {
//         final result = await getCheckoutUsercase.call(event.data);
//         emit(GetCheckoutState());
//       }
//        else if (event is GetDataServiceEvent) {
//         final result = await getdataserviceUsescase.call(event.carsbrand);
// emit(GetDataServiceState(cars: result));
//         // _mapFailureOrPostsToState(result);
//       }

//       //     else if (event is GetMaintingOrdersEvent) {
//       //       emit(GetMaintingOrdersState());
//       //     } else if (event is GetPendingeOrdersEvent) {
//       //       final result = await getpendingOrdersUsercase.call();
//       //       emit(GetPendingeOrdersState(orders: result));
//       //     }
//       //     else if(event is ErrorEvent){
//       // final result = await getpendingOrdersUsercase.call();

//       // emit(ErrorPostsState(message: _mapFailureToMessage(result)));

//       //     }

//       else if (event is AddEvent) {
//         emit(AddCountDateState(counter: ++counter));
//       } else if (event is NegEvent) {
//         emit(NegCountDateState(counter: --counter));
//       } else if (event is ChangeEvent) {
//         status = !status;
//         emit(ChangeState(status: status));
//       }

//     });
//     // int counter = 0;
//   }

//   //    OrdersState _mapFailureOrPostsToState(Either<Failure, List<Cars>> either) {
//   //   return either.fold(
//   //     (failure) => ErrorPostsState(message: _mapFailureToMessage(failure)),
//   //     (cars) => GetDataServiceState(cars: cars),
//   //   );
//   // }

//   //==================
//   String _mapFailureToMessage(Failure failure) {
//     switch (failure.runtimeType) {
//       case ServerFailure:
//         return SERVER_FAILURE_MESSAGE;
//       case EmptyCacheFailure:
//         return EMPTY_CACHE_FAILURE_MESSAGE;
//       case OfflineFailure:
//         return OFFLINE_FAILURE_MESSAGE;
//       default:
//         return "Unexpected Error , Please try again later .";
//     }
//   }
// }
//========================= crude sherif
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rentcarbloc/ordersfeature/data/model/carsmodels.dart';
import 'package:rentcarbloc/ordersfeature/data/model/ordersmodel.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/class/failures.dart';
import '../../../core/error/failures.dart';
import '../../domain/enities/cars.dart';
import '../../domain/enities/orders.dart';

import '../../domain/usercases/addusescase.dart';
import '../../domain/usercases/deletorder_usecase.dart';
import '../../domain/usercases/getApproveOrders_usecase.dart';
import '../../domain/usercases/getArchiveOrders_usescase.dart';
import '../../domain/usercases/getMaintingOrders_usescase.dart';
import '../../domain/usercases/getcheckout_usecase.dart';
import '../../domain/usercases/getdataservice_usescase.dart';
import '../../domain/usercases/getpendingorders_usercase.dart';
import '../../domain/usercases/neg_usescase.dart';

part 'orders_event.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final DeletOrdersUsescase deletOrdersUsescase;

  final GetCheckoutUsercase getCheckoutUsercase;
  final GetdataserviceUsescase getdataserviceUsescase;
  // final AddUsescase addUsescase;
  // final NegUsercase negUsercase;
  int counter = 1;
  late bool status;
//  final GetMaintingOrdersUsercase getMaintingOrdersUsercase;
  final GetpendingOrdersUsercase getpendingOrdersUsercase;
    final GetApproveOrdersUsercase getApproveOrdersUsercase;
  final GetArchiveOrdersUsercase getArchiveOrdersUsercase;

  OrdersBloc({
    required this.deletOrdersUsescase,
    required this.getCheckoutUsercase,
    required this.getdataserviceUsescase,
    // required this.addUsescase,
    // required this.negUsercase,

    // required this.getMaintingOrdersUsercase,
    required this.getpendingOrdersUsercase,
    required this.getArchiveOrdersUsercase,
    required this.getApproveOrdersUsercase,
  }) : super(OrdersInitial()) {
    on<OrdersEvent>((event, emit) async {

      if (event is DeleteOrdersEvent) {
        final result = await deletOrdersUsescase.call(event.carsId);
        emit(DeleteOrdersState());
        // emit(ErrorPostsState(message: _mapFailureToMessage(result)));
      }
      else if (event is GetApproveOrdersEvent) {
        final result = await getApproveOrdersUsercase.call();
        emit(GetApproveOrdersState(orders: result));
        //  emit(ErrorPostsState(message: _mapFailureToMessage(result)));
      }
       else if (event is GetAchiveOrdersEvent) {
        final result = await getArchiveOrdersUsercase.call();
        emit(GetAchiveOrdersState(orders: result));
      }
      else if (event is GetCheckoutEvent) {
        final result = await getCheckoutUsercase.call(event.data);
        emit(GetCheckoutState());
      } 
      else if (event is GetDataServiceEvent) {
        final result = await getdataserviceUsescase.call(event.carsbrand);


        if (result == StatusRequest.failure) {
          print("result ==> $result");
          emit(ErrorPostsState(message: "No Data"));
        } else {
          emit(GetDataServiceState(cars: result));
          print("result ==> $result");
        }

        
      }

      //     else if (event is GetMaintingOrdersEvent) {
      //       emit(GetMaintingOrdersState());
      //     } else if (event is GetPendingeOrdersEvent) {
      //       final result = await getpendingOrdersUsercase.call();
      //       emit(GetPendingeOrdersState(orders: result));
      //     }
      //     else if(event is ErrorEvent){
      // final result = await getpendingOrdersUsercase.call();

      // emit(ErrorPostsState(message: _mapFailureToMessage(result)));

      //     }

      else if (event is AddEvent) {
        emit(AddCountDateState(counter: ++counter));
      } else if (event is NegEvent) {
        emit(NegCountDateState(counter: --counter));
      } else if (event is ChangeEvent) {
        status = !status;
        emit(ChangeState(status: status));
      }
      else if (event is GetPendingeOrdersEvent) {
        final result = await getpendingOrdersUsercase.call();
        emit(GetPendingeOrdersState(orders: result));
      }
    });
    // int counter = 0;
  }



}
