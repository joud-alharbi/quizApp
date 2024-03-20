
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:my_quize_app/screens/login.dart';



class SplashScreen extends StatelessWidget {
 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    body:Container(
decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/whit.jpg"),
            fit: BoxFit.cover)) ,

         height:MediaQuery.of(context).size.height,
         width:MediaQuery.of(context).size.width,
       child: Column(
      children: [
        SizedBox(
          height:( MediaQuery.of(context).size.height)*0.28,
        ),
Image.asset("assets/login.jpg",height: 200,width: 200,),
        Text("Quiz App!",
        style: TextStyle(fontWeight:FontWeight.bold,fontSize: 27,
        color: Color.fromARGB(255, 45, 101, 45)
        ,fontFamily: 'SignikaNegative'),) ,
      
       Text("enjoy our app",
        style: TextStyle(fontWeight:FontWeight.bold,fontSize: 27,
        color: Color.fromARGB(255, 142, 197, 149)
        ,fontFamily: 'SignikaNegative'),),
        // Regular font weight),
    SizedBox(height: 160,
    ),
   

  ElevatedButton(
  onPressed: () {
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  },
  style: ButtonStyle(
    fixedSize: MaterialStateProperty.all<Size>(
      Size(300, 50), // Set the width to 200 and height to 50
    ),
        
             backgroundColor: MaterialStateProperty.all<Color>(
      Color.fromARGB(255, 118, 239, 170),
    ),
  ),
  child: Text('Start', style: TextStyle(fontSize: 17,),
              ),
)



           ],
      ),
  ));
  }
  }
