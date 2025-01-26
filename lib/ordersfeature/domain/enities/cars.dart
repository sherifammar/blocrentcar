import 'package:equatable/equatable.dart';

class Cars extends Equatable {
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

  Cars(
      {required this.carsId,
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
      required this.carsAddress});

  @override
  List<Object?> get props => [
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
        carsAddress,
      ];
}
