import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../core/const/color.dart';
import '../../../../core/const/linkapi.dart';
import '../../../data/model/ordersmodel.dart';





class SlideApprove extends StatelessWidget {
    final OrdersModel listdata;
  const SlideApprove({super.key, required this.listdata});

  @override
  Widget build(BuildContext context) {
    return Container(
/********************** */
        // padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: ColorAPP.black, width: 1),
        ),
        child:
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             
             Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Booking ID :${listdata.ordersId!}",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                              Text(listdata.carsBrand!,
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                              Text(listdata.carsModel!,
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                              Text("Price car: ${listdata.ordersCarprice!}",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                              Text("price driver: ${listdata.ordersDriverprice!}",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                              Text("Day: ${listdata.ordersNumberday!}",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                                  Text("Total : ${listdata.ordersTotalprice!}",
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                                  Text(listdata.ordersBookdate!,
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.black,
                                  )),
                            ]),
                      ),
                      // Container(
                      //   width: 150,
                      //   child: Image.asset(
                      //     ImageAsset.car,
                      //     height: 150,
                      //     width: 200,
                      //     fit: BoxFit.fill,
                      //   ),
                      // )
                    ],
                  ),
 
              
        
                 ]
                 
              ),
        ),
          Container(
              child: CachedNetworkImage(
                  height: 180,
                  width: 150,
                  fit: BoxFit.fill,
                  imageUrl: "${AppLink.imagelink}/${listdata.carsImage}"),
            ),
           ],
         )
         );
  }
}