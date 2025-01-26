
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteDialogWidget extends StatelessWidget {

  const DeleteDialogWidget({
    Key? key,
 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

    AlertDialog(
      title: Text("Are you Sure ?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            "No",
          ),
        ),
        TextButton(
          onPressed: () {
            exit(0);
          },
          child: Text("Yes"),
        ),
      ],
    );

  }
}


Future<bool>alertExitAPP(){

// showDialog(
//   context: context,
//   builder: (BuildContext context) {
    // return 
    AlertDialog(
      title: Text('Alert Title'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('This is a demo alert dialog.'),
            Text('Would you like to approve of this message?'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Black'),
          onPressed: () {
       
          },
        ),
         TextButton(
          onPressed: () {
            exit(0);
          },
          child: Text("Yes"),
        ),
      ],
    );
  // },


return Future.value(true);


}