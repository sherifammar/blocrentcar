import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:rentcarbloc/ordersfeature/present/widget/orders/Approveorders_widget.dart';

import '../../../core/const/color.dart';
import '../../data/model/ordersmodel.dart';
import '../bloc/orders_bloc.dart';
import '../widget/orders/archive_widget.dart';
import '../widget/orders/slideapprove.dart';
import '../widget/orders/slideorders.dart';

class Record extends StatelessWidget {
  final List<OrdersModel> penddata;
  const Record({super.key, required this.penddata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          ListView(shrinkWrap: true, scrollDirection: Axis.vertical, children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Pending Orders",
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: ColorAPP.black,
              )),
        ),
        !penddata.isEmpty
            ? Container(
                height: 820,
                width: 400,
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: penddata.length,
                  itemBuilder: ((context, index) => Column(
                        children: [
                          Slideorders(
                            listdata: penddata[index],
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      )),
                ),
              )
            : Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: ColorAPP.black, width: 1)),
                height: 300,
                child: Center(
                    child: Text("No  Orders",
                        style: GoogleFonts.roboto(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: ColorAPP.red,
                        ))),
              ),
        Container(
          width: 400,
          // alignment: AlignmentDirectional.center,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocListener<OrdersBloc, OrdersState>(
                listener: (context, state) {
                  if (state is GetAchiveOrdersState) {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  ArchiveWidget(data:state.orders),
                            ),
                          );
                  }
                 
                }
               
                ,
                child: Container(
                    alignment: Alignment.center,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorAPP.black, width: 1.5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        BlocProvider.of<OrdersBloc>(context).add(
                            GetAchiveOrdersEvent(),
                          );
                      },
                      child: Text("Archive",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: ColorAPP.blue,
                          )),
                    )),
              ),
              //**************************** */
              BlocListener<OrdersBloc, OrdersState>(
                listener: (context, state) {
               if(state is GetApproveOrdersState){
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  ApproveWidget(data:state.orders),
                            ),
                          );
                  
               }
                },
                child: Container(
                                alignment: Alignment.center,
                                width: 180,
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorAPP.black, width: 1.5),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: MaterialButton(
                                  onPressed: () {
                                   BlocProvider.of<OrdersBloc>(context).add(
                            GetApproveOrdersEvent(),
                          );
                                  },
                                  child: Text("Approved",
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal,
                                        color: ColorAPP.blue,
                                      )),
                                )),
              ),
            ],
          ),
        ),
     
      ]),
    );
  }
}
