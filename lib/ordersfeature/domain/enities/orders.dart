import 'package:equatable/equatable.dart';

class Orders extends Equatable {
  String? ordersId;
  String? ordersUsersid;
  String? ordersCarsid;
  String? ordersNumberday;
  String? ordersCarprice;
  String? ordersDriverprice;
  String? ordersBookdate;
  String? ordersRecorddate;
  String? ordersStatus;
  String? ordersTotalprice;
  String? carsId;
  String? carsBrand;
  String? carsModel;
  String? carsNumber;
  String? carsKilos;
  String? carsImage;
  String? carsApprove;
  String? carsDate;
  String? carsPrice;
  String? carsDriver;
  String? carsTank;
  String? carsEngine;
  String? carsOwnerid;
  String? carsOwnername;
  String? carsAddress;

  // ignore: empty_constructor_bodies
  Orders({
    this.ordersId,
    required this.ordersUsersid,
    required this.ordersCarsid,
    required this.ordersNumberday,
    required this.ordersCarprice,
    required this.ordersDriverprice,
    required this.ordersBookdate,
    required this.ordersRecorddate,
    required this.ordersStatus,
    required this.ordersTotalprice,
    required this.carsId,
    required this.carsBrand,
    required this.carsModel,
    required this.carsNumber,
    required this.carsKilos,
    required this.carsImage,
    required this.carsApprove,
    required this.carsDate,
    required this.carsPrice,
    required this.carsDriver,
    required this.carsTank,
    required this.carsEngine,
    required this.carsOwnerid,
    required this.carsOwnername,
    required this.carsAddress,
  });

  @override
  List<Object?> get props => [
    ordersId,
    ordersUsersid,
    ordersCarsid,
    ordersNumberday,
    ordersCarprice,
    ordersDriverprice,
    ordersBookdate,
    ordersRecorddate,
    ordersStatus,
    ordersTotalprice,
    carsId,
    carsBrand,
    carsModel,
    carsNumber,
    carsKilos,
    carsImage,
    carsApprove,
    carsDate,
    carsPrice,
    carsDriver,
    carsTank,
    carsEngine,
    carsOwnerid,
    carsOwnername,
    carsAddress
    
  ];
}


