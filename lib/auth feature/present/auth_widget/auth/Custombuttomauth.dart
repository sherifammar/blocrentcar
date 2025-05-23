// import 'package:flutter/material.dart';

// import '../../../core/constant/color.dart';
// class CustomButtomauth extends StatelessWidget {
//   final String text;
//   final void Function()? onPressed;
//   const CustomButtomauth({super.key, required this.text,   this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin:const EdgeInsets.only(top: 10),
//       // padding: EdgeInsets.all(10),
//       child: MaterialButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         padding:const EdgeInsets.symmetric(vertical: 15),
//         onPressed: onPressed,
//         color: ColorAPP.blue,
//         textColor: Colors.black,
//         child: Text(text , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
//       ),
//     );
//   }
// }
//================================

import 'package:flutter/material.dart';

import '../../../../core/const/color.dart';

class CustomButtomauth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtomauth({super.key, required this.text,   this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      // padding: EdgeInsets.all(10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:const EdgeInsets.symmetric(vertical: 15),
        onPressed: onPressed,
        color: ColorAPP.blue,
        textColor: Colors.black,
        child: Text(text , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
      ),
    );
  }
}