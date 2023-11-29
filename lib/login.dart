import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superfather/play.dart';


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(


        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10000000000000000000000.0),

                child: Image(image: AssetImage('lib/assets/image/boy-looking-back-school-bus.jpg', ),
                  width: 200,

                ),

              ),
              Text('Save Your Kid',style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily:'Pacifico' ,
              ),),
              Padding(
                padding: const EdgeInsets.all(20),
                child:
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                    labelText:'Email' ,

                    border: OutlineInputBorder(),


                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(

                  padding: const EdgeInsets.all(20),
                  child:
                  TextFormField(
                    decoration: InputDecoration(
                      labelText:'passeord' ,

                      border:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white,width: 2 ),

                      ),
                    ),
                  )
              ),
              Container(
                  width: 150,
                  color: Colors.blue,
                  child: TextButton(onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const play()));
                  },
                    child:Text('Login',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),)),
              Padding(
                padding:const EdgeInsets.all(30),
                child: Row(
                    children: [
                      Text('Dont have an account?',style: TextStyle(
                        color: Colors.white,
                      ),),
                      SizedBox(

                        width:50 ,
                      ),
                      TextButton(onPressed: (){


                      },child:Text('Register',style: TextStyle(
                        fontSize: 15,

                        color: Colors.white,

                      ),
                      )
                        ,),

                    ]
                ),
              ),

            ],
          ),
        ),




      );
  }
}







