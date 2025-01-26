


import 'package:flutter/material.dart';

import '../../../../core/const/color.dart';




class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;// must be add final
  final String textbutton;
  final IconData icondata;
  //  final String imageasset;
   final bool? active ;
   const CustomButtonAppBar(
      {Key? key,
      required this.textbutton,
      required this.icondata,
      required this.onPressed,
       required this.active, 
      //  required this.imageasset
       })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10),
            // color: active == true ? Colors.red :ColorAPP.blue
            ),

        padding: const EdgeInsets.only(top:5, right: 5,left: 5, ),
        child: MaterialButton(
          onPressed: onPressed,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(icondata,
                color: active == true ? ColorAPP.grey:ColorAPP.blue,size: 40),
              //  Image.asset(imageasset,width: 50,height: 50,fit: BoxFit.fill,),
            Text(textbutton,
                style: TextStyle(
                    color: active == true ? ColorAPP.grey :ColorAPP.blue,fontSize: 25))
          ]),
        ),
      ),
    );
  }
}
