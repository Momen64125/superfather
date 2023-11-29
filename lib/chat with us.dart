import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chat with us ',),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'اكتب رسالتك هنا',
                   prefix: IconButton(onPressed: (){}, icon:Icon(Icons.send,),),


                  border: OutlineInputBorder(),


                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
