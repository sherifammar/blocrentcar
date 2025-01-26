// part of 'orders_bloc.dart';

// abstract class OrdersState extends Equatable {
//   const OrdersState();

//   @override
//   List<Object> get props => [];
// }

// class OrdersInitial extends OrdersState {}

// // class GetDataServiceState extends OrdersState {
// //   List<Cars> cars;
// //   GetDataServiceState({required this.cars});
// //   @override
// //   List<Object> get props => [cars];
// // }

// class GetDataServiceState extends OrdersState {
//   List<Cars> cars;
    
//   GetDataServiceState({required this.cars});
  
//   @override
//   List<Object> get props => [cars];
  
// }


// class GetApproveOrdersState extends OrdersState {
//   List<OrdersModel> orders;
//   GetApproveOrdersState({required this.orders});
//   @override
//   List<Object> get props => [orders];
// }

// class GetAchiveOrdersState extends OrdersState {
//   List<OrdersModel> orders;
//   GetAchiveOrdersState({required this.orders});
//   @override
//   List<Object> get props => [orders];
// }

// class GetPendingeOrdersState extends OrdersState {
//   List<OrdersModel> orders;
//   GetPendingeOrdersState({required this.orders});
//   @override
//   List<Object> get props => [orders];
// }

// class DeleteOrdersState extends OrdersState {}

// class GetCheckoutState extends OrdersState {}

// class GetMaintingOrdersState extends OrdersState {}

// class AddCountDateState extends OrdersState {
//    int counter;
//   AddCountDateState({required this.counter});
//     List<Object> get props => [counter];
// }


// class NegCountDateState extends OrdersState {
//    int counter ;
//   NegCountDateState({required this.counter});
//     List<Object> get props => [counter];
// }
// class HomepageState extends OrdersState {}

// class RecordepageState extends OrdersState {}

// class ChangeState extends OrdersState {
//   bool status;
//   ChangeState({required this.status});
//     List<Object> get props => [status];

// }

// //===============
// class ErrorPostsState extends OrdersState {
//   final String message;

//   ErrorPostsState({required this.message});

//   @override
//   List<Object> get props => [message];
// }

// class CardminState extends OrdersState {}

//====================
part of 'orders_bloc.dart';

abstract class OrdersState extends Equatable {
  const OrdersState();

  @override
  List<Object> get props => [];
}

class OrdersInitial extends OrdersState {}

class GetDataServiceState extends OrdersState {
  List<Cars> cars;
  GetDataServiceState({required this.cars});
  @override
  List<Object> get props => [cars];
}

// class GetDataServiceState extends OrdersState {
//   List<CarsModel> cars;
    
//   GetDataServiceState({required this.cars});
  
//   @override
//   List<Object> get props => [cars];
  
// }


class GetApproveOrdersState extends OrdersState {
  List<OrdersModel> orders;
  GetApproveOrdersState({required this.orders});
  @override
  List<Object> get props => [orders];
}

class GetAchiveOrdersState extends OrdersState {
  List<OrdersModel> orders;
  GetAchiveOrdersState({required this.orders});
  @override
  List<Object> get props => [orders];
}

class GetPendingeOrdersState extends OrdersState {
  List<OrdersModel> orders;
  GetPendingeOrdersState({required this.orders});
  @override
  List<Object> get props => [orders];
}

class DeleteOrdersState extends OrdersState {}

class GetCheckoutState extends OrdersState {}

class GetMaintingOrdersState extends OrdersState {}

class AddCountDateState extends OrdersState {
   int counter;
  AddCountDateState({required this.counter});
    List<Object> get props => [counter];
}


class NegCountDateState extends OrdersState {
   int counter ;
  NegCountDateState({required this.counter});
    List<Object> get props => [counter];
}
class HomepageState extends OrdersState {}

class RecordepageState extends OrdersState {}

class ChangeState extends OrdersState {
  bool status;
  ChangeState({required this.status});
    List<Object> get props => [status];

}

//===============
class ErrorPostsState extends OrdersState {
  final String message;

  ErrorPostsState({required this.message});

  @override
  List<Object> get props => [message];
}

class CardminState extends OrdersState {}