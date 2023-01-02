import 'package:flutter/material.dart';
import 'package:flutter_day18/secondScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //
  //
  //COLOR CODE
  Color c1 = Color(0xff000000);
  Color c2 = Color(0xff1A4D2E);
  Color c3 = Color(0xffFF9F29);
  Color c4 = Color(0xffFAF3E3);
  //
  //
  //
  //Smart phone details
  String sName = "Smart phone";
  String  sImg= "📱";
  String  sDetail = "A smartphone is a cellular telephone with an integrated computer and other features not originally associated with telephones such as an operating system.";
  int sPrice = 100;
  //
  //
  //Laptop detail
  String lNmae = "Laptop";
  String lImg = "💻";
  String lDetail = "Intel Core i7 8th Gen. Quad Core, 1.8 GHz Clock Speed. 8 GB RAM. 512 GB Hard Disk. Intel UHD Graphics 620.";
  int lPrice = 250;
  //
  //
  //Watch detail
  String wName = "Watch";
  String wImg = "⌚";
  String wDetail = "A watch is a portable timepiece intended to be carried or worn by a person. It is designed to keep a consistent movement despite the motions caused by the person's activities.";
  int wPrice = 60;
  //
  //
  // Desktop computer detail
  String dName = "Desktop PC";
  String dImg = "🖥️";
  String dDetail = "A desktop computer is a personal computing device designed to fit on top of a typical office desk. It houses the physical hardware that makes a computer run and connects to input devices such as the monitor, keyboard and mouse.";
  int dPrice = 200;

  //
  //
  // mouse detail
  String mName = "Mouse";
  String mImg = "🖱️";
  String mDetail = "The mouse is a small, movable device that lets you control a range of things on a computer. Most types of mouse have two buttons, and some will have a wheel in between the buttons.";
  int mPrice = 10;
  //
  // mouse detail
    String kName = "Keyboard";
    String kImg = "⌨";
    String kDetail = "A keyboard is for putting information including letters, words and numbers into your computer. You press the individual buttons on the keyboard when you type. ";
    int kPrice = 12;

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
              child: Icon(Icons.favorite_outline, color: c4, size: 28),
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
          child: //Product list coloumn
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                      color: c3,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: c3,
                            //border: Border.all(color: c1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("📱",style: TextStyle(fontSize: 50)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Smart Phone",style: TextStyle(fontSize: 18,letterSpacing: 2),),
                            Text("\$ 100",style: TextStyle(fontSize: 14,letterSpacing: 2),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Second(sImg,sName,sDetail,sPrice),));
                              });
                            },child: Icon(Icons.shopping_cart,size: 30)),
                            Text("Add to Cart",style: TextStyle(letterSpacing: 2,fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                      color: c3,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: c3,
                            //border: Border.all(color: c1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("💻",style: TextStyle(fontSize: 50)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Laptop",style: TextStyle(fontSize: 18,letterSpacing: 2),),
                            Text("\$ 250",style: TextStyle(fontSize: 14,letterSpacing: 2),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Second(lImg,lNmae,lDetail,lPrice),));
                              });
                            },child: Icon(Icons.shopping_cart,size: 30)),
                            Text("Add to Cart",style: TextStyle(letterSpacing: 2,fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                      color: c3,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: c3,
                            //border: Border.all(color: c1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("⌚",style: TextStyle(fontSize: 50)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Watch",style: TextStyle(fontSize: 18,letterSpacing: 2),),
                            Text("\$ 60",style: TextStyle(fontSize: 14,letterSpacing: 2),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Second(wImg,wName,wDetail,wPrice),));
                              });
                            },child: Icon(Icons.shopping_cart,size: 30)),
                            Text("Add to Cart",style: TextStyle(letterSpacing: 2,fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                      color: c3,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: c3,
                            //border: Border.all(color: c1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("🖥️",style: TextStyle(fontSize: 50)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Desktop PC",style: TextStyle(fontSize: 18,letterSpacing: 2),),
                            Text("\$ 200",style: TextStyle(fontSize: 14,letterSpacing: 2),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Second(dImg,dName,dDetail,dPrice),));
                              });
                            },child: Icon(Icons.shopping_cart,size: 30)),
                            Text("Add to Cart",style: TextStyle(letterSpacing: 2,fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                      color: c3,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: c3,
                            //border: Border.all(color: c1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("🖱️",style: TextStyle(fontSize: 50)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Mouse",style: TextStyle(fontSize: 18,letterSpacing: 2),),
                            Text("\$ 10",style: TextStyle(fontSize: 14,letterSpacing: 2),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Second(mImg,mName,mDetail,mPrice),));
                              });
                            },child: Icon(Icons.shopping_cart,size: 30)),
                            Text("Add to Cart",style: TextStyle(letterSpacing: 2,fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 330,
                  decoration: BoxDecoration(
                      color: c3,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: c3,
                            //border: Border.all(color: c1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("⌨",style: TextStyle(fontSize: 50)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Keyboard",style: TextStyle(fontSize: 18,letterSpacing: 2),),
                            Text("\$ 12",style: TextStyle(fontSize: 14,letterSpacing: 2),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Second(kImg,kName,kDetail,kPrice),));
                              });
                            },child: Icon(Icons.shopping_cart,size: 30)),
                            Text("Add to Cart",style: TextStyle(letterSpacing: 2,fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),



              ],
            ),
          ),
            ),
      ),
    );
  }
}
