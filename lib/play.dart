import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:superfather/superfather%20count.dart';

import 'change password.dart';
import 'chat with us.dart';

class play extends StatefulWidget {
  const play({super.key});

  @override
  State<play> createState() => _playState();
}

class _playState extends State<play> {
  int v=0;
  bool icon1=false;
  bool icon2=false;
  bool icon3=false;

  Set<String>idstudent={};
  var qrstr='lets scan it';
  var ScaffoldKey=GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoldKey,
       appBar: AppBar(),
      floatingActionButton:
      FloatingActionButton(onPressed: (){
        ScanQr();
        idstudent.add(qrstr);

      },
        child: Icon(Icons.qr_code_scanner,),),

      body:ListView.builder(
        itemCount:idstudent.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading:  CircleAvatar(
              radius: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),

                child: Image(image: AssetImage('lib/assets/image/ac27aba16ae7764d640a52114ff91f0f.jpg'),
                  width: 300,
                  height: 300,
                ),

              ),

            ),
              trailing: IconButton(onPressed:() {

                ScaffoldKey.currentState?.showBottomSheet((context) => Container(
                  height: 80,
                  child: Row(
                    children: [
                      Text('in house',style: TextStyle(
                        fontSize: 20,
                      ),),
                      IconButton(onPressed: (){

                        setState(() {
                          icon1=true;
                          icon2=false;
                          icon3=false;
                        });
                      }, icon: icon1? Icon(Icons.check_box):Icon(Icons.check_box_outline_blank_sharp),),



                      SizedBox(
                        width: 20,
                      ),
                      Text('in Buse',style: TextStyle(
                        fontSize: 10,
                      ),),
                      IconButton(onPressed: (){

                        setState(() {
                          icon3=true;
                          icon2=false;
                          icon1=false;
                        });
                      }, icon: icon3? Icon(Icons.check_box):Icon(Icons.check_box_outline_blank_sharp),),



                      SizedBox(
                        width: 20,
                      ),
                      Text('in School',style: TextStyle(
                        fontSize: 20,
                      ),),
                      IconButton(onPressed: (){
                        setState(() {
                          icon1=false;
                          icon3=false;
                          icon2=true;
                        });
                      }, icon: icon2? Icon(Icons.check_box):Icon(Icons.check_box_outline_blank_sharp),),





                    ],
                  ),
                ),);
              }, icon: Icon(Icons.keyboard_arrow_down))
            ,
            title: Text(idstudent.elementAt(index), style: TextStyle(color: Colors.green, fontSize: 15),),
          );
        },
      ),

      drawer:
      Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,



                    child: Image(image: AssetImage('lib/assets/image/1000_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg'),
                      width: 300,
                      height: 300,
                    ),

                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(3,50,5,1),
                    child: Column(
                      children: [
                        Text('Raafat Mohamed',
                          style: TextStyle(
                            fontSize: 15,
                          ),),
                        SizedBox(
                          height: 5,
                        ),
                        Text('momenrafaat477@gmail.com', style: TextStyle(
                          fontSize: 10,
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Chat With us'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const chat()));
              },
            ),
            ListTile(
              title: const Text('School'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);

                // Then close the drawer

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const acount()));
              },
            ),
            ListTile(
              title: const Text('change your password,'),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);

                // Then close the drawer

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Changepw()));
              },
            ),
          ],
        ),
      ),

       /*Center(
        child: Column
          (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [



              Row(
                children: [
                  Text('in house',style: TextStyle(
                    fontSize: 20,
                  ),),
                  IconButton(onPressed: (){

                    setState(() {
                      icon1=true;
                      icon2=false;
                      icon3=false;
                    });
                  }, icon: icon1? Icon(Icons.check_box):Icon(Icons.check_box_outline_blank_sharp),),



                  SizedBox(
                    width: 20,
                  ),
                  Text('in Buse',style: TextStyle(
                    fontSize: 10,
                  ),),
                  IconButton(onPressed: (){

                    setState(() {
                      icon3=true;
                      icon2=false;
                      icon1=false;
                    });
                  }, icon: icon3? Icon(Icons.check_box):Icon(Icons.check_box_outline_blank_sharp),),



                  SizedBox(
                    width: 20,
                  ),
                  Text('in School',style: TextStyle(
                    fontSize: 20,
                  ),),
                  IconButton(onPressed: (){
                   setState(() {
                     icon1=false;
                     icon3=false;
                     icon2=true;
                   });
                  }, icon: icon2? Icon(Icons.check_box):Icon(Icons.check_box_outline_blank_sharp),),





                ],
              ),

           
          ],
        ),
      ),*/


    );

  }
  Future<void>ScanQr()async{
    try{
      FlutterBarcodeScanner.scanBarcode('#2A99cf', 'cancel', true,  ScanMode.QR).then((value) {
        setState(() {
          qrstr=value;

        });
      });
    }
    catch(e){
      setState(() {

      });
    }

  }
}

