// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../core/const/color.dart';

// class Cardadmin extends StatelessWidget {
//   final String texttitle;
//   final String imageasset;
//     // final bool isActive;
//   final void Function()? onpress;
//   const Cardadmin({super.key, required this.texttitle, required this.imageasset, this.onpress,

//   // required this.isActive
//   });

//   @override
//   Widget build(BuildContext context) {
//     return    InkWell(
//       onTap: onpress,
//       child: Card(

//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
//         side:  BorderSide(color: ColorAPP.blue, width: 1)),
//         // color: isActive == true? ColorAPP.blue : Colors.white,

//         elevation: 5,
//         child: Column(

//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [

//         Container(
//           margin: const EdgeInsets.all(10),
//           child: Image.asset(imageasset,width: 150,height: 130,fit: BoxFit.fill,)),
//         Text(texttitle ,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ,color: ColorAPP.blue),),

//       ],
//       ),),
//     );
//   }
// }

// //====================
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const/color.dart';
import '../../bloc/orders_bloc.dart';
import '../../page/carspage.dart';
import '../../page/record.dart';
import '../snackbar_message.dart';

class Cardadmin extends StatelessWidget {
  final String texttitle;
  final String imageasset;
  // final bool isActive;
  // final void Function()? onpress;
  const Cardadmin({
    super.key,
    required this.texttitle,
    required this.imageasset,

    // required this.isActive
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrdersBloc, OrdersState>(
      listener: (context, state) {
          if (state is GetDataServiceState) {
                   
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Carspage(cars:state.cars),
                            ),
                          );
                        } 
                        else if (state is ErrorPostsState) {
                                      SnackBarMessage().showSuccessSnackBar(
                    message: state.message, context: context);
                          
                        }
          //==============
        
      },
      child: InkWell(
        onTap: () {
            BlocProvider.of<OrdersBloc>(context).add(
                            GetDataServiceEvent(carsbrand: texttitle),
                          );
//=====================
              
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: ColorAPP.blue, width: 1)),
          // color: isActive == true? ColorAPP.blue : Colors.white,

          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    imageasset,
                    width: 150,
                    height: 130,
                    fit: BoxFit.fill,
                  )),
              Text(
                texttitle,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: ColorAPP.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
