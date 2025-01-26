import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../core/const/color.dart';
import '../../../core/const/imageasset.dart';

class  Sucesspage extends StatelessWidget {
  const Sucesspage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(child: Image.asset(ImageAsset.sucess,
          width: 250,
          height: 250,
          fit: BoxFit.fill,

          
          ),),
          Text("Order was placed Successfully!",
           style: GoogleFonts.roboto(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              color: ColorAPP.blue,
                            )),
          Container(
            padding: EdgeInsets.all(40),
            child: Text("We’ve received your order and our team is working to get it to you as quick and sae as possible.",
             style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: ColorAPP.black,
                              )
                              ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            
          }, child:  Text("Back to Home",  style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: ColorAPP.black,
                              )),
         
                              )
        ],
      ),
    );
  }
}
