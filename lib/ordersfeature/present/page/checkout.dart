import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:rentcarbloc/ordersfeature/present/page/sucesspage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/const/color.dart';
import '../../../core/const/linkapi.dart';
import '../../data/model/carsmodels.dart';
import '../../domain/enities/cars.dart';
import '../bloc/orders_bloc.dart';


class Checkout extends StatelessWidget {
  List<Cars> cars;
 
  Checkout({
    Key? key,
    required this.cars,
   
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CalendarWeekController calendercontroller = CalendarWeekController();
    String? dateSelect;
    int? day = 1;
    bool status =true;
     String?  userid  ;
     getStoredValue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     print("iddddd");
     print(sharedPreferences.getString("id").toString() );
    userid= sharedPreferences.getString("id").toString();
  
  }
 

    return Scaffold(
      appBar: AppBar(
        title: Text("${cars[0].carsModel}",
            style: GoogleFonts.roboto(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: ColorAPP.white,
            )),
        centerTitle: true,
        backgroundColor: ColorAPP.lightblack,
        elevation: 0,
        foregroundColor: ColorAPP.white, // color of icon
      ),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return Container(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              color: ColorAPP.lightblack,
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  //*************************** */
                  Container(
                    width: double.infinity,
                    height: 850,
                    decoration: BoxDecoration(
                      color: ColorAPP.grey,
                      // border: Border.all(color: ColorAPP.black, width: 1.0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Stack(children: [
                      Positioned(
                          bottom: 0,
                          top: 180,
                          right: 0,
                          left: 50,
                          child: Container(
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorAPP.black, width: 1.0),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 70),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text("${cars[0].carsModel}",
                                      style: GoogleFonts.roboto(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        color: ColorAPP.black,
                                      )),
                                ),
                                CalendarWeek(
                                  controller: calendercontroller,
                                  height: 150,
                                  showMonth: true,
                                  backgroundColor: ColorAPP.background,
                                  dateStyle: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.blue,
                                  ),
                                  dayOfWeekStyle: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: ColorAPP.red,
                                  ),
                                  minDate: DateTime.now().add(
                                    Duration(days: -365),
                                  ),
                                  maxDate: DateTime.now().add(
                                    Duration(days: 365),
                                  ),
                                  onDatePressed: (DateTime datetime) {
                                    dateSelect = datetime.toString();
                                    print("Selected date: ${dateSelect}");
                                     getStoredValue().toString();

                                    // print('usreid ****** $userid');
                                  },
                                  monthViewBuilder: (DateTime time) => Align(
                                    alignment: FractionalOffset.center,
                                    child: Container(
                                        margin:
                                            const EdgeInsets.symmetric(vertical: 4),
                                        child: Text(
                                          DateFormat.yMMMM().format(time),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 25),
                                        )),
                                  ),
                                  decorations: [
                                    DecorationItem(
                                        decorationAlignment:
                                            FractionalOffset.bottomRight,
                                        date: DateTime.now(),
                                        decoration: Icon(
                                          Icons.today,
                                          color: Colors.blue,
                                          // size: 25,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                BlocBuilder<OrdersBloc, OrdersState>(
                                  builder: (context, state) {
                                    return
                                    Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(children: [
                                      Text("DAY",
                                          style: GoogleFonts.roboto(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: ColorAPP.black,
                                          )),
                                      Text("${cars[0].carsPrice}/day",
                                          style: GoogleFonts.roboto(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: ColorAPP.grey,
                                          ))
                                    ]),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorAPP.black, width: 1.0),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      width: 100,
                                      height: 60,
                                      padding: EdgeInsets.only(left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              BlocProvider.of<OrdersBloc>(context)
                                                  .add(AddEvent());
                                                 day = day! + 1;
                                               

                                            },
                                            child: Text("+",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  color: ColorAPP.black,
                                                )),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          // Text("${cars[0].days}",
                                      Text("${day}",style: GoogleFonts.roboto(
                                        
                                      )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              BlocProvider.of<OrdersBloc>(context)
                                                  .add(NegEvent());
                                                  day = day! -1;

                                            },
                                            child: Text("-",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  color: ColorAPP.black,
                                                )),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                );
                                  }
                                ),
                                BlocBuilder<OrdersBloc, OrdersState>(
                                  builder: (context, state) {
                                    return Container(
                                      padding: EdgeInsets.symmetric(horizontal: 25),
                                      child: ListTile(
                                          title: Text("Driver",
                                              style: GoogleFonts.roboto(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.normal,
                                                color: ColorAPP.black,
                                              )),
                                          trailing: Switch(
                                              value: status,
                                              activeColor: Colors.blue,
                                              onChanged: (val) {
                                                status = val;
                                                BlocProvider.of<OrdersBloc>(context).add(ChangeEvent(stauts: val));
                                                if (state is ChangeState) {
                                                  status = val;
                                                  print("status ==> $status");
                                            
                                                }
                                                  
                                              
                                              })),
                                    );
                                  },
                                ),
                                Container(
                                  width: 350,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorAPP.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(20),
                                      color: ColorAPP.background),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          // "price /${controller.days} day: ${controller.price} \$",
                                          "price ${int.parse(cars[0].carsPrice!) * day!}\$ - days ${day!}",
                                          style: GoogleFonts.roboto(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: ColorAPP.black,
                                          )),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                          "price of driver /${int.parse(cars[0].carsDriver!) * day!} \$",
                                          style: GoogleFonts.roboto(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: ColorAPP.black,
                                          )),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  decoration: BoxDecoration(
                                      color: ColorAPP.background,
                                      border: Border.all(
                                          color: ColorAPP.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: MaterialButton(
                                      child: Text(
                                          "Checkout - ${int.parse(cars[0].carsPrice!) * day! + int.parse(cars[0].carsDriver!) * day!}\$",
                                          style: GoogleFonts.roboto(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: ColorAPP.black,
                                          )),
                                      onPressed: () {
                                        int pricecars =
                                            int.parse(cars[0].carsPrice!) * day!;
                                        int priceDriver =
                                            int.parse(cars[0].carsDriver!) * day!;
                                        int priceTotal = pricecars + priceDriver;
                                        print('push >>>> $userid');
                                     
                                        Map data = {
                                          "usersid": userid.toString(),
                                          "orderscarsid": cars[0].carsId.toString(),
                                          "ordersnumberday": day.toString(),
                                          "orderscarprice": pricecars.toString(),
                                          "ordersdriverprice": priceDriver.toString(),
                                          "ordersbookdate": dateSelect.toString(),
                                          "orderstotalprice": priceTotal.toString(),
                                        };
                                        BlocProvider.of<OrdersBloc>(context).add(
                                          GetCheckoutEvent(data: data),
                                        );
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Sucesspage(),
                                          ),
                                        );
                                         print(
                                            int.parse(cars[0].carsDriver!) * day!);
                                      }),
                                )
                              ],
                            ),
                          )),
                      Positioned(
                        top: 3,
                        left: 150,
                        right: 0,
                        bottom: 500,
                        child: Container(
                          child: CachedNetworkImage(
                              height: 250,
                              width: 250,
                              fit: BoxFit.fill,
                              imageUrl: "${AppLink.imagelink}/${cars[0].carsImage}"),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            );},
          )
        
      );
  }
}
