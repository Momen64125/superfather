import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class scan extends StatefulWidget {
  const scan({super.key});

  @override
  State<scan> createState() => _scanState();
}

class _scanState extends State<scan> {
String  qrstr="lets  scan it";
int hights=15;
var width=15;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('lets  scan it'),
         //TextButton(onPressed: (){}, child: Text('scan',));
          SizedBox(
            width: 15,
            height: 15,
          )

        ],
      ),
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
