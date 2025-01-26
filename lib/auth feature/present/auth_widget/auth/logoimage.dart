// import 'package:flutter/material.dart';

// import '../../../core/constant/imageasset.dart';

// class Imageauth extends StatelessWidget {
//   const Imageauth({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(ImageAsset.fristpage,height: 180,width: 100,);// error in size on page=>soved by add height
//   }
// }  
//===================

import 'package:flutter/material.dart';

import '../../../../core/const/imageasset.dart';


class Imageauth extends StatelessWidget {
  const Imageauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAsset.fristpage,height: 180,width: 100,);// error in size on page=>soved by add height
  }
}