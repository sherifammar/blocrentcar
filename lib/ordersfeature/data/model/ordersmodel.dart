class OrdersModel {
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

  OrdersModel(
      {this.ordersId,
      this.ordersUsersid,
      this.ordersCarsid,
      this.ordersNumberday,
      this.ordersCarprice,
      this.ordersDriverprice,
      this.ordersBookdate,
      this.ordersRecorddate,
      this.ordersStatus,
      this.ordersTotalprice,
      this.carsId,
      this.carsBrand,
      this.carsModel,
      this.carsNumber,
      this.carsKilos,
      this.carsImage,
      this.carsApprove,
      this.carsDate,
      this.carsPrice,
      this.carsDriver,
      this.carsTank,
      this.carsEngine,
      this.carsOwnerid,
      this.carsOwnername,
      this.carsAddress});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    ordersId = json['orders_id'];
    ordersUsersid = json['orders_usersid'];
    ordersCarsid = json['orders_carsid'];
    ordersNumberday = json['orders_numberday'];
    ordersCarprice = json['orders_carprice'];
    ordersDriverprice = json['orders_driverprice'];
    ordersBookdate = json['orders_bookdate'];
    ordersRecorddate = json['orders_recorddate'];
    ordersStatus = json['orders_status'];
    ordersTotalprice = json['orders_totalprice'];
    carsId = json['cars_id'];
    carsBrand = json['cars_brand'];
    carsModel = json['cars_model'];
    carsNumber = json['cars_number'];
    carsKilos = json['cars_kilos'];
    carsImage = json['cars_image'];
    carsApprove = json['cars_approve'];
    carsDate = json['cars_date'];
    carsPrice = json['cars_price'];
    carsDriver = json['cars_driver'];
    carsTank = json['cars_tank'];
    carsEngine = json['cars_engine'];
    carsOwnerid = json['cars_ownerid'];
    carsOwnername = json['cars_ownername'];
    carsAddress = json['cars_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orders_id'] = this.ordersId;
    data['orders_usersid'] = this.ordersUsersid;
    data['orders_carsid'] = this.ordersCarsid;
    data['orders_numberday'] = this.ordersNumberday;
    data['orders_carprice'] = this.ordersCarprice;
    data['orders_driverprice'] = this.ordersDriverprice;
    data['orders_bookdate'] = this.ordersBookdate;
    data['orders_recorddate'] = this.ordersRecorddate;
    data['orders_status'] = this.ordersStatus;
    data['orders_totalprice'] = this.ordersTotalprice;
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
}