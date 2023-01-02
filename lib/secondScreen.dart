import 'package:flutter/material.dart';

import 'homeScreen.dart';

class Second extends StatefulWidget {
  // for smart phone
  String? phoneImg;
  String? phoneName;
  String? phoneDetail;
  int? phonePrice;

  // for laptop
  String? laptopImg;
  String? laptopName;
  String? laptopDetail;
  int? laptopPrice;

  Second(this.phoneImg, this.phoneName, this.phoneDetail, this.phonePrice);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  //COLOR CODE
  Color c1 = Color(0xff000000);
  Color c2 = Color(0xff1A4D2E);
  Color c3 = Color(0xffFF9F29);
  Color c4 = Color(0xffFAF3E3);

  //
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: c1,
          leading: Icon(Icons.all_inclusive, color: c4, size: 32),
          title:
              Text("Navigator", style: TextStyle(color: c4, letterSpacing: 2)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(onTap: () {
                setState(() {
                  Navigator.pop(context,Home());
                });
              },child: Icon(Icons.arrow_back, color: c4, size: 28)),
            ),
          ],
        ),
        //
        //
        //
        //
        backgroundColor: c2,
        //
        //
        //BODY
        body: Container(
          // alignment: Alignment.center,
          height: 600,
          width: 500,
          decoration: BoxDecoration(
            color: c1,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                  color: c3,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${widget.phoneImg}",
                          style: TextStyle(fontSize: 80, letterSpacing: 2)),
                      Text("${widget.phoneName}",
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold)),
                      Text("${widget.phoneDetail}",
                          style: TextStyle(fontSize: 13, letterSpacing: 2)),
                      Text("\$ ${widget.phonePrice}",
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
