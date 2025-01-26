// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:rentcarbloc/ordersfeature/present/page/carspage.dart';
// import 'package:rentcarbloc/ordersfeature/present/page/record.dart';
// import 'package:rentcarbloc/ordersfeature/present/widget/home/cardadmin.dart';

// import '../../../core/const/color.dart';
// import '../../../core/const/imageasset.dart';
// import '../bloc/orders_bloc.dart';

// // class Home extends StatelessWidget {
// //   const Home({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: true,
// //         backgroundColor: ColorAPP.blue,
// //         elevation: 0,
// //         foregroundColor: ColorAPP.white, // color of icon
// //         title: Text("Home",
// //             style: GoogleFonts.roboto(
// //               fontSize: 30,
// //               fontWeight: FontWeight.bold,
// //               fontStyle: FontStyle.normal,
// //               color: ColorAPP.white,
// //             )),
// //       ),
// //       drawer: Drawer(
// //         elevation: 10,
// //         width: 200,
// //         backgroundColor: ColorAPP.blue,
// //         child: Container(
// //           color: ColorAPP.blue,
// //           child:
// //               Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
// //             const SizedBox(
// //               height: 50,
// //             ),
// //             InkWell(
// //               onTap: () {},
// //               child: Container(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                   children: [
// //                     Icon(
// //                       Icons.logout_outlined,
// //                       color: ColorAPP.white,
// //                       size: 50,
// //                     ),
// //                     Text(
// //                       "Logout",
// //                       style: GoogleFonts.roboto(
// //                         fontSize: 30,
// //                         fontWeight: FontWeight.bold,
// //                         fontStyle: FontStyle.normal,
// //                         color: ColorAPP.white,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(
// //               height: 20,
// //             ),
// //             InkWell(
// //               child: Container(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                   children: [
// //                     Icon(
// //                       Icons.call_end_outlined,
// //                       color: ColorAPP.white,
// //                       size: 50,
// //                     ),
// //                     Text(
// //                       "Call",
// //                       style: GoogleFonts.roboto(
// //                         fontSize: 30,
// //                         fontWeight: FontWeight.bold,
// //                         fontStyle: FontStyle.normal,
// //                         color: ColorAPP.white,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             )
// //           ]),
// //         ),
// //       ),
// //       body: ListView(
// //         shrinkWrap: true,
// //         children: [
// //           const SizedBox(
// //             height: 10,
// //           ),
// //           const SizedBox(
// //             height: 10,
// //           ),
// //           Container(
// //             padding: EdgeInsets.all(10),
// //             decoration: BoxDecoration(
// //               borderRadius: BorderRadius.circular(25),
// //             ),
// //             child: Image.asset(
// //               ImageAsset.fristpage,
// //               height: 250,
// //               width: 200,
// //               fit: BoxFit.fill,
// //             ),
// //           ),
// //           Container(
// //             padding: EdgeInsets.all(10),
// //             margin: EdgeInsets.all(10),
// //             child: Text("Pick your preferred brand",
// //                 style: GoogleFonts.roboto(
// //                   fontSize: 25,
// //                   fontWeight: FontWeight.bold,
// //                   fontStyle: FontStyle.normal,
// //                   color: ColorAPP.black,
// //                 )),
// //           ),
// //           BlocBuilder<OrdersBloc, OrdersState>(
// //             builder: (context, state) {
// //               return Container(
// //                 padding: EdgeInsets.all(10),
// //                 child: GridView(
// //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                       crossAxisCount: 2, mainAxisExtent: 180),

// //                   physics:
// //                       NeverScrollableScrollPhysics(), // remove error listview , gridleview

// //                   shrinkWrap: true,

// //                   children: [
// //                     Cardadmin(
// //                       texttitle: 'Ford',
// //                       imageasset: ImageAsset.ford,
// //                       onpress: () {},
// //                     ),
// //                     Cardadmin(
// //                       texttitle: 'Mercedes',
// //                       imageasset: ImageAsset.mercedes,
// //                       onpress: () {},
// //                     ),
// //                     Cardadmin(
// //                       texttitle: 'Toyota',
// //                       imageasset: ImageAsset.toyota,
// //                       onpress: () {},
// //                     ),
// //                     // Cardadmin(
// //                     //   texttitle: 'BMW',
// //                     //   imageasset: ImageAsset.bmw,
// //                     //   onpress: () {
// //                     //      BlocProvider.of<OrdersBloc>(context).add(
// //                     //         GetDataServiceEvent(carsbrand: "bmw"),
// //                     //       );
// //                     //     if (state is GetDataServiceState) {

// //                     //       Navigator.push(
// //                     //         context,
// //                     //         MaterialPageRoute(
// //                     //           builder: (context) =>  Carspage(cars:state.cars),
// //                     //         ),
// //                     //       );
// //                     //     }

// //                     //     print("sherif");
// //                     //   },
// //                     // ),
// //                   ],
// //                 ),
// //               );
// //             },
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
// //=================
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:rentcarbloc/ordersfeature/present/page/carspage.dart';
// import 'package:rentcarbloc/ordersfeature/present/widget/home/cardadmin.dart';

// import '../../../core/const/color.dart';
// import '../../../core/const/imageasset.dart';
// import '../bloc/orders_bloc.dart';
// import '../widget/snackbar_message.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: ColorAPP.blue,
//         elevation: 0,
//         foregroundColor: ColorAPP.white, // color of icon
//         title: Text("Home",
//             style: GoogleFonts.roboto(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               fontStyle: FontStyle.normal,
//               color: ColorAPP.white,
//             )),
//       ),
//       drawer: Drawer(
//         elevation: 10,
//         width: 200,
//         backgroundColor: ColorAPP.blue,
//         child: Container(
//           color: ColorAPP.blue,
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
//             const SizedBox(
//               height: 50,
//             ),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       Icons.logout_outlined,
//                       color: ColorAPP.white,
//                       size: 50,
//                     ),
//                     Text(
//                       "Logout",
//                       style: GoogleFonts.roboto(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         fontStyle: FontStyle.normal,
//                         color: ColorAPP.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             InkWell(
//               child: Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       Icons.call_end_outlined,
//                       color: ColorAPP.white,
//                       size: 50,
//                     ),
//                     Text(
//                       "Call",
//                       style: GoogleFonts.roboto(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         fontStyle: FontStyle.normal,
//                         color: ColorAPP.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             BlocListener<OrdersBloc, OrdersState>(
//               listener: (context, state) {
//                 if(state is GetPendingeOrdersState){
//                Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>  Record(penddata:state.orders),
//                             ),
//                           );
//                           } else if(state is ErrorPostsState){
//                               SnackBarMessage().showSuccessSnackBar(
//                     message: state.message, context: context);
//                           }
//               },
//               child: InkWell(
//                 onTap: () {
//                     BlocProvider.of<OrdersBloc>(context).add(
//                             GetPendingeOrdersEvent(),
//                           );
//                 },
//                 child: Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Icon(
//                         Icons.edit_attributes,
//                         color: ColorAPP.white,
//                         size: 50,
//                       ),
//                       Text(
//                         "Recorde",
//                         style: GoogleFonts.roboto(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                           fontStyle: FontStyle.normal,
//                           color: ColorAPP.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ]),
//         ),
//       ),
//       body: ListView(
//         // shrinkWrap: true,
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: Image.asset(
//               ImageAsset.fristpage,
//               height: 250,
//               width: 200,
//               fit: BoxFit.fill,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             margin: EdgeInsets.all(10),
//             child: Text("Pick your preferred brand",
//                 style: GoogleFonts.roboto(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.normal,
//                   color: ColorAPP.black,
//                 )),
//           ),
//           BlocBuilder<OrdersBloc, OrdersState>(
//             builder: (context, state) {
//               return Container(
//                 padding: EdgeInsets.all(10),
//                 child: GridView(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2, mainAxisExtent: 180),

//                   physics:
//                       NeverScrollableScrollPhysics(), // remove error listview , gridleview

//                   shrinkWrap: true,

//                   children: [
//                     Cardadmin(
//                       texttitle: 'Ford',
//                       imageasset: ImageAsset.ford,
//                     ),
//                     Cardadmin(
//                       texttitle: 'Mercedes',
//                       imageasset: ImageAsset.mercedes,
//                     ),
//                     Cardadmin(
//                       texttitle: 'Toyota',
//                       imageasset: ImageAsset.toyota,
//                     ),
//                     Cardadmin(
//                       texttitle: 'BMW',
//                       imageasset: ImageAsset.bmw,
//                     ),
//                   ],
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
//=======================
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcarbloc/ordersfeature/present/page/carspage.dart';
import 'package:rentcarbloc/ordersfeature/present/page/record.dart';
import 'package:rentcarbloc/ordersfeature/present/widget/home/cardadmin.dart';

import '../../../core/const/color.dart';
import '../../../core/const/imageasset.dart';
import '../bloc/orders_bloc.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: ColorAPP.blue,
//         elevation: 0,
//         foregroundColor: ColorAPP.white, // color of icon
//         title: Text("Home",
//             style: GoogleFonts.roboto(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               fontStyle: FontStyle.normal,
//               color: ColorAPP.white,
//             )),
//       ),
//       drawer: Drawer(
//         elevation: 10,
//         width: 200,
//         backgroundColor: ColorAPP.blue,
//         child: Container(
//           color: ColorAPP.blue,
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
//             const SizedBox(
//               height: 50,
//             ),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       Icons.logout_outlined,
//                       color: ColorAPP.white,
//                       size: 50,
//                     ),
//                     Text(
//                       "Logout",
//                       style: GoogleFonts.roboto(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         fontStyle: FontStyle.normal,
//                         color: ColorAPP.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             InkWell(
//               child: Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       Icons.call_end_outlined,
//                       color: ColorAPP.white,
//                       size: 50,
//                     ),
//                     Text(
//                       "Call",
//                       style: GoogleFonts.roboto(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         fontStyle: FontStyle.normal,
//                         color: ColorAPP.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ]),
//         ),
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: Image.asset(
//               ImageAsset.fristpage,
//               height: 250,
//               width: 200,
//               fit: BoxFit.fill,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             margin: EdgeInsets.all(10),
//             child: Text("Pick your preferred brand",
//                 style: GoogleFonts.roboto(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.normal,
//                   color: ColorAPP.black,
//                 )),
//           ),
//           BlocBuilder<OrdersBloc, OrdersState>(
//             builder: (context, state) {
//               return Container(
//                 padding: EdgeInsets.all(10),
//                 child: GridView(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2, mainAxisExtent: 180),

//                   physics:
//                       NeverScrollableScrollPhysics(), // remove error listview , gridleview

//                   shrinkWrap: true,

//                   children: [
//                     Cardadmin(
//                       texttitle: 'Ford',
//                       imageasset: ImageAsset.ford,
//                       onpress: () {},
//                     ),
//                     Cardadmin(
//                       texttitle: 'Mercedes',
//                       imageasset: ImageAsset.mercedes,
//                       onpress: () {},
//                     ),
//                     Cardadmin(
//                       texttitle: 'Toyota',
//                       imageasset: ImageAsset.toyota,
//                       onpress: () {},
//                     ),
//                     // Cardadmin(
//                     //   texttitle: 'BMW',
//                     //   imageasset: ImageAsset.bmw,
//                     //   onpress: () {
//                     //      BlocProvider.of<OrdersBloc>(context).add(
//                     //         GetDataServiceEvent(carsbrand: "bmw"),
//                     //       );
//                     //     if (state is GetDataServiceState) {

//                     //       Navigator.push(
//                     //         context,
//                     //         MaterialPageRoute(
//                     //           builder: (context) =>  Carspage(cars:state.cars),
//                     //         ),
//                     //       );
//                     //     }

//                     //     print("sherif");
//                     //   },
//                     // ),
//                   ],
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
//=================
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcarbloc/ordersfeature/present/page/carspage.dart';
import 'package:rentcarbloc/ordersfeature/present/widget/home/cardadmin.dart';

import '../../../core/const/color.dart';
import '../../../core/const/imageasset.dart';
import '../bloc/orders_bloc.dart';
import '../widget/snackbar_message.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorAPP.blue,
        elevation: 0,
        foregroundColor: ColorAPP.white, // color of icon
        title: Text("Home",
            style: GoogleFonts.roboto(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: ColorAPP.white,
            )),
      ),
      drawer: Drawer(
        elevation: 10,
        width: 200,
        backgroundColor: ColorAPP.blue,
        child: Container(
          color: ColorAPP.blue,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.logout_outlined,
                      color: ColorAPP.white,
                      size: 50,
                    ),
                    Text(
                      "Logout",
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: ColorAPP.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.call_end_outlined,
                      color: ColorAPP.white,
                      size: 50,
                    ),
                    Text(
                      "Call",
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: ColorAPP.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocListener<OrdersBloc, OrdersState>(
              listener: (context, state) {
                if (state is GetPendingeOrdersState) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Record(penddata: state.orders),
                    ),
                  );
                  print("$state");
               print(state.orders);
                }
                else if (state is ErrorPostsState) {
                  SnackBarMessage().showSuccessSnackBar(
                      message: state.message, context: context);
                      print("$state");
                }
              },
              child: InkWell(
                onTap: () {
                  BlocProvider.of<OrdersBloc>(context).add(
                    GetPendingeOrdersEvent(),
                  );
                  print("donneeeeeeeeeeeee");
                  
                  
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.edit_attributes,
                        color: ColorAPP.white,
                        size: 50,
                      ),
                      Text(
                        "Recorde",
                        style: GoogleFonts.roboto(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: ColorAPP.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset(
              ImageAsset.fristpage,
              height: 250,
              width: 200,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text("Pick your preferred brand",
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: ColorAPP.black,
                )),
          ),
          Container(
                padding: EdgeInsets.all(10),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 180),

                  physics:
                      NeverScrollableScrollPhysics(), // remove error listview , gridleview

                  shrinkWrap: true,

                  children: [
                    Cardadmin(
                      texttitle: 'Ford',
                      imageasset: ImageAsset.ford,
                    ),
                    Cardadmin(
                      texttitle: 'Mercedes',
                      imageasset: ImageAsset.mercedes,
                    ),
                    Cardadmin(
                      texttitle: 'Toyota',
                      imageasset: ImageAsset.toyota,
                    ),
                    Cardadmin(
                      texttitle: 'BMW',
                      imageasset: ImageAsset.bmw,
                    ),
                  ],
                ),
              )
            
          
        ],
      ),
    );
}
}
