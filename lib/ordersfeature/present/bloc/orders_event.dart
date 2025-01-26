part of 'orders_bloc.dart';

abstract class OrdersEvent extends Equatable {
  const OrdersEvent();

  @override
  List<Object> get props => [];
}

class GetDataServiceEvent extends OrdersEvent {
  final String carsbrand;
  const GetDataServiceEvent({required this.carsbrand});
  @override
  List<Object> get props => [carsbrand];
}

class GetApproveOrdersEvent extends OrdersEvent {}

class GetAchiveOrdersEvent extends OrdersEvent {}

class GetPendingeOrdersEvent extends OrdersEvent {}

class DeleteOrdersEvent extends OrdersEvent {
  final String carsId;
  const DeleteOrdersEvent({required this.carsId});
  @override
  List<Object> get props => [carsId];
}

class GetCheckoutEvent extends OrdersEvent {
  final Map data;
  const GetCheckoutEvent({required this.data});
  @override
  List<Object> get props => [data];
}

class GetMaintingOrdersEvent extends OrdersEvent {}

class AddEvent extends OrdersEvent {}

class NegEvent extends OrdersEvent {}
class ErrorEvent extends OrdersEvent {}


class ChangeEvent extends OrdersEvent {
   final bool stauts;
  const ChangeEvent({required this.stauts});
  @override
  List<Object> get props => [stauts];
}
