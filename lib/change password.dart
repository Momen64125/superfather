import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Changepw extends StatelessWidget {
  const Changepw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
     body: Column(
       children: [
         Padding(

             padding: const EdgeInsets.all(20),
             child:
             TextFormField(
               decoration: InputDecoration(
                 labelText:'old passeord' ,

                 border:OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.white,width: 2 ),

                 ),
               ),
             )
         ),
         Padding(

             padding: const EdgeInsets.all(20),
             child:
             TextFormField(
               decoration: InputDecoration(
                 labelText:'new passeord' ,

                 border:OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.white,width: 2 ),

                 ),
               ),
             )
         ),
         Padding(

             padding: const EdgeInsets.all(20),
             child:
             TextFormField(
               decoration: InputDecoration(
                 labelText:'confirm passeord' ,
               

                 border:OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.white,width: 2 ),

                 ),
               ),
             )
         ),
         Container(
             width: 150,
             color: Colors.blue,
             child: TextButton(onPressed: (){},
               child:Text('Save',style: TextStyle(
                 fontSize: 20,
                 color: Colors.white,
               ),),)),
       ],
     ),
    );
  }
}
