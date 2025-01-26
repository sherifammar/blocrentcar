 
 import 'package:flutter/material.dart';
import 'package:rentcarbloc/ordersfeature/present/widget/orders/slideapprove.dart';

import '../../../data/model/ordersmodel.dart';
 
 
 class ApproveWidget extends StatelessWidget {
  final List <OrdersModel> data;
  const ApproveWidget({super.key,  required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Approve Orders"),
        centerTitle: true,
      ),
      body: Container(
                  height: 350,
                  width: 600,
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: ((context, index) => Column(
                          children: [
                            SlideApprove(
                              listdata: data[index],
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        )),
                  ),
                ),
    );
  }
}