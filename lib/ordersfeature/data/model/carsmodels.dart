// // import '../../domain/enities/cars.dart';

// // class CarsModel {
// //   String? carsId;
// //   String? carsBrand;
// //   String? carsModel;
// //   String? carsNumber;
// //   String? carsKilos;
// //   String? carsImage;
// //   String? carsApprove;
// //   String? carsDate;
// //   String? carsPrice;
// //   String? carsDriver;
// //   String? carsTank;
// //   String? carsEngine;
// //   String? carsOwnerid;
// //   String? carsOwnername;
// //   String? carsAddress;

// //   CarsModel(
// //       {
// //         this.carsId,
// //       this.carsBrand,
// //       this.carsModel,
// //       this.carsNumber,
// //       this.carsKilos,
// //       this.carsImage,
// //       this.carsApprove,
// //       this.carsDate,
// //       this.carsPrice,
// //       this.carsDriver,
// //       this.carsTank,
// //       this.carsEngine,
// //       this.carsOwnerid,
// //       this.carsOwnername,
// //       this.carsAddress});

// //   CarsModel.fromJson(Map<String, dynamic> json) {
// //     carsId = json['cars_id'];
// //     carsBrand = json['cars_brand'];
// //     carsModel = json['cars_model'];
// //     carsNumber = json['cars_number'];
// //     carsKilos = json['cars_kilos'];
// //     carsImage = json['cars_image'];
// //     carsApprove = json['cars_approve'];
// //     carsDate = json['cars_date'];
// //     carsPrice = json['cars_price'];
// //     carsDriver = json['cars_driver'];
// //     carsTank = json['cars_tank'];
// //     carsEngine = json['cars_engine'];
// //     carsOwnerid = json['cars_ownerid'];
// //     carsOwnername = json['cars_ownername'];
// //     carsAddress = json['cars_address'];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = new Map<String, dynamic>();
// //     data['cars_id'] = this.carsId;
// //     data['cars_brand'] = this.carsBrand;
// //     data['cars_model'] = this.carsModel;
// //     data['cars_number'] = this.carsNumber;
// //     data['cars_kilos'] = this.carsKilos;
// //     data['cars_image'] = this.carsImage;
// //     data['cars_approve'] = this.carsApprove;
// //     data['cars_date'] = this.carsDate;
// //     data['cars_price'] = this.carsPrice;
// //     data['cars_driver'] = this.carsDriver;
// //     data['cars_tank'] = this.carsTank;
// //     data['cars_engine'] = this.carsEngine;
// //     data['cars_ownerid'] = this.carsOwnerid;
// //     data['cars_ownername'] = this.carsOwnername;
// //     data['cars_address'] = this.carsAddress;
// //     return data;
// //   }
// }
import '../../domain/enities/cars.dart';

class CarsModel extends Cars {
  CarsModel({
    required String carsId,
    required String carsBrand,
    required String carsModel,
    required String carsNumber,
    required String carsKilos,
    required String carsImage,
    required String carsApprove,
    required String carsDate,
    required String carsPrice,
    required String carsDriver,
    required String carsTank,
    required String carsEngine,
    required String carsOwnerid,
    required String carsOwnername,
    required String carsAddress,
  }) : super(
          carsId: carsId,
          carsBrand: carsBrand,
          carsModel: carsModel,
          carsNumber: carsNumber,
          carsKilos: carsKilos,
          carsImage: carsImage,
          carsApprove: carsApprove,
          carsDate: carsDate,
          carsPrice: carsPrice,
          carsDriver: carsDriver,
          carsTank: carsTank,
          carsEngine: carsEngine,
          carsOwnerid: carsTank,
          carsOwnername: carsTank,
          carsAddress: carsTank,
        );

  factory CarsModel.fromJson(Map<String, dynamic> json) {
    return CarsModel(
      carsId: json['cars_id'],
      carsBrand: json['cars_brand'],
      carsModel: json['cars_model'],
      carsNumber: json['cars_number'],
      carsKilos: json['cars_kilos'],
      carsImage: json['cars_image'],
      carsApprove: json['cars_approve'],
      carsDate: json['cars_date'],
      carsPrice: json['cars_price'],
      carsDriver: json['cars_driver'],
      carsTank: json['cars_tank'],
      carsEngine: json['cars_engine'],
      carsOwnerid: json['cars_ownerid'],
      carsOwnername: json['cars_ownername'],
      carsAddress: json['cars_address'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cars_id'] = this.carsId;
    data['cars_brand'] = this.carsBrand;
    data['cars_model'] = this.carsModel;
    data['cars_number'] = this.carsNumber;
    data['cars_kilos'] = this.carsKilos;
    data['cars_image'] = this.carsImage;
    data['cars_approve'] = this.carsApprove;
    data['cars_date'] = this.carsDate;
    data['cars_price'] = this.carsPrice;
    data['cars_driver'] = this.carsDriver;
    data['cars_tank'] = this.carsTank;
    data['cars_engine'] = this.carsEngine;
    data['cars_ownerid'] = this.carsOwnerid;
    data['cars_ownername'] = this.carsOwnername;
    data['cars_address'] = this.carsAddress;
    return data;
  }

//    Map<String, dynamic> toJson() {
// return
//    { 'cars_id' : carsId,
//     'cars_brand' :carsBrand,
//     'cars_model' :carsModel,
//     'cars_number' :carsNumber,
//     'cars_kilos' :carsKilos,
//     'cars_image' :carsImage,
//     'cars_approve' :carsApprove,
//     'cars_date' :carsDate,
//     'cars_price' :carsPrice,
//     'cars_driver' :carsDriver,
//     'cars_tank' :carsTank,
//     'cars_engine' :carsEngine,
//     'cars_ownerid' :carsOwnerid,
//     'cars_ownername' :carsOwnername,
//     'cars_address':carsAddress,};
   
//   }
}

//===============================
// class CarsModel {
//   String? carsId;
//   String? carsBrand;
//   String? carsModel;
//   String? carsNumber;
//   String? carsKilos;
//   String? carsImage;
//   String? carsApprove;
//   String? carsDate;
//   String? carsPrice;
//   String? carsDriver;
//   String? carsTank;
//   String? carsEngine;
//   String? carsOwnerid;
//   String? carsOwnername;
//   String? carsAddress;

//   CarsModel(
//       {this.carsId,
//       this.carsBrand,
//       this.carsModel,
//       this.carsNumber,
//       this.carsKilos,
//       this.carsImage,
//       this.carsApprove,
//       this.carsDate,
//       this.carsPrice,
//       this.carsDriver,
//       this.carsTank,
//       this.carsEngine,
//       this.carsOwnerid,
//       this.carsOwnername,
//       this.carsAddress});

//   CarsModel.fromJson(Map<String, dynamic> json) {
//     carsId = json['cars_id'];
//     carsBrand = json['cars_brand'];
//     carsModel = json['cars_model'];
//     carsNumber = json['cars_number'];
//     carsKilos = json['cars_kilos'];
//     carsImage = json['cars_image'];
//     carsApprove = json['cars_approve'];
//     carsDate = json['cars_date'];
//     carsPrice = json['cars_price'];
//     carsDriver = json['cars_driver'];
//     carsTank = json['cars_tank'];
//     carsEngine = json['cars_engine'];
//     carsOwnerid = json['cars_ownerid'];
//     carsOwnername = json['cars_ownername'];
//     carsAddress = json['cars_address'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['cars_id'] = this.carsId;
//     data['cars_brand'] = this.carsBrand;
//     data['cars_model'] = this.carsModel;
//     data['cars_number'] = this.carsNumber;
//     data['cars_kilos'] = this.carsKilos;
//     data['cars_image'] = this.carsImage;
//     data['cars_approve'] = this.carsApprove;
//     data['cars_date'] = this.carsDate;
//     data['cars_price'] = this.carsPrice;
//     data['cars_driver'] = this.carsDriver;
//     data['cars_tank'] = this.carsTank;
//     data['cars_engine'] = this.carsEngine;
//     data['cars_ownerid'] = this.carsOwnerid;
//     data['cars_ownername'] = this.carsOwnername;
//     data['cars_address'] = this.carsAddress;
//     return data;
//   }
// }