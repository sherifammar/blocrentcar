class AutmobileModels {
  String? autmoblieId;
  String? autmoblieUsersid;
  String? autmoblieTypecar;
  String? autmoblieBrand;
  String? autmoblieCarnumber;
  String? autmoblieManfactoredate;
  String? autmoblieRecordedate;

  AutmobileModels(
      {this.autmoblieId,
      this.autmoblieUsersid,
      this.autmoblieTypecar,
      this.autmoblieBrand,
      this.autmoblieCarnumber,
      this.autmoblieManfactoredate,
      this.autmoblieRecordedate});

  AutmobileModels.fromJson(Map<String, dynamic> json) {
    autmoblieId = json['autmoblie_id'];
    autmoblieUsersid = json['autmoblie_usersid'];
    autmoblieTypecar = json['autmoblie_typecar'];
    autmoblieBrand = json['autmoblie_brand'];
    autmoblieCarnumber = json['autmoblie_carnumber'];
    autmoblieManfactoredate = json['autmoblie_manfactoredate'];
    autmoblieRecordedate = json['autmoblie_recordedate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['autmoblie_id'] = this.autmoblieId;
    data['autmoblie_usersid'] = this.autmoblieUsersid;
    data['autmoblie_typecar'] = this.autmoblieTypecar;
    data['autmoblie_brand'] = this.autmoblieBrand;
    data['autmoblie_carnumber'] = this.autmoblieCarnumber;
    data['autmoblie_manfactoredate'] = this.autmoblieManfactoredate;
    data['autmoblie_recordedate'] = this.autmoblieRecordedate;
    return data;
  }
}