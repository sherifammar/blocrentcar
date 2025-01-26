import 'package:flutter/material.dart';
class CustomTextbodyauth extends StatelessWidget {
  final String textbody;
  const CustomTextbodyauth({super.key, required this.textbody});

  @override
  Widget build(BuildContext context) {
    return Text(
            textbody,
            textAlign: TextAlign.center,
         style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          );
  }
}