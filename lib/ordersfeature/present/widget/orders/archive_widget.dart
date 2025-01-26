 
 import 'package:flutter/material.dart';

import 'package:rentcarbloc/ordersfeature/present/widget/orders/slideorders.dart';

import '../../../data/model/ordersmodel.dart';
 
 
 class ArchiveWidget extends StatelessWidget {
  final List <OrdersModel> data;
  const ArchiveWidget({super.key,  required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: const Text("Archive Orders"),
        centerTitle: true,
      ),
      body: Container(
        
                  height: 850,
                  width: 500,
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: ((context, index) => Column(
                          children: [
                            Slideorders(
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