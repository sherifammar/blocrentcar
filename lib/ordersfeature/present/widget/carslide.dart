

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../core/const/color.dart';
import '../../../core/const/imageasset.dart';
import '../../../core/const/linkapi.dart';
import '../../domain/enities/cars.dart';




class Carslide extends StatelessWidget {
  // change staless widget to getxview
  final Cars listdata;
  // final ImagesModel itemsModel;

  Carslide({
    Key? key,
    required this.listdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return 
      Container(
        width: double.infinity,
        height: 800,
        decoration: BoxDecoration(
          border: Border.all(color: ColorAPP.black, width: 1.0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(children: [
          Positioned(
            bottom: 0,
            top: 180,
            right: 0,
            left: 0,
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorAPP.black, width: 1.0),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 70),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 350,
                      height: 80,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorAPP.black, width: 1.0),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("${listdata.carsModel}",
                                  style: GoogleFonts.roboto(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )
                                  ),
                              Text("${listdata.carsPrice}/day",
                                  style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.grey,
                                  )
                                  )
                                  ,
                            ],
                          ),
                          Image.asset(
                            ImageAsset.boil,
                            height: 30,
                            width: 30,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 250,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: ColorAPP.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageAsset.tank,
                              height: 30,
                              width: 30,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 10),
                            Text("${listdata.carsTank}",
                                style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  color: ColorAPP.white,
                                )),
                            Text("KM of fill Tank",
                                style: GoogleFonts.roboto(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  color: ColorAPP.white,
                                )),
                          ]),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorAPP.black, width: 1.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(children: [
                              Image.asset(
                                ImageAsset.speed,
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "${listdata.carsKilos}/sec",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.grey,
                                  )
                              ),
                              SizedBox(height: 2),
                              Text(
                                "0-100KM/h",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.grey,
                                  )
                              ),
                            ]),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorAPP.black, width: 1.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(children: [
                              Image.asset(
                                ImageAsset.engine,
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "${listdata.carsEngine} HP",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.grey,
                                  )
                              ),
                              Text(
                                "Power",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.grey,
                                  )
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: 300,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorAPP.black, width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${listdata.carsOwnername}",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.grey,
                                  )
                            ),
                            Text(
                              "${listdata.carsAddress}",
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.grey,
                                  )
                            ),
                          ]),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorAPP.black, width: 1.5),
                        color: ColorAPP.background,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          // controller.goTocheckout(listdata.carsId!, listdata.carsBrand!,listdata. carsModel!,listdata. carsNumber!,listdata. carsKilos!,listdata. carsImage!,listdata. carsPrice!,listdata. carsDriver!);
                        },
                        child: Text("Rent Now ${listdata.carsModel}",
                          style: GoogleFonts.roboto(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
            top: 3,
            left: 50,
            right: 50,
            bottom: 450,
            child:
             Container(
              child: CachedNetworkImage(
                  height: 250,
                  width: 250,
                  fit: BoxFit.fill,
                  imageUrl: "${AppLink.imagelink}/${listdata.carsImage}"),
            ),
          ),
        ]),
      
    
    );
  }
}

//=================
