
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';



class SplashScreen extends StatelessWidget {
 @override
Widget build(BuildContext context) {
  return Scaffold(
    body:Container(
decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/background.jpg"),
            fit: BoxFit.cover)) ,

         height:MediaQuery.of(context).size.height,
         width:MediaQuery.of(context).size.width,
       child: Column(
      children: [
        SizedBox(
          height:( MediaQuery.of(context).size.height)*0.28,
        ),
Image.asset("assets/logo1.png"),
        Text("Quiz App!",
        style: TextStyle(fontWeight:FontWeight.bold,fontSize: 27,
        color: Color.fromARGB(255, 229, 184, 69)
        ,fontFamily: 'SignikaNegative'),) ,
      
       Text("enjoy our app",
        style: TextStyle(fontWeight:FontWeight.bold,fontSize: 27,
        color: Color.fromARGB(255, 243, 239, 198)
        ,fontFamily: 'SignikaNegative'),),
        // Regular font weight),
    SizedBox(height: 200,
    ),
   

  ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
    fixedSize: MaterialStateProperty.all<Size>(
      Size(300, 50), // Set the width to 200 and height to 50
    ),
  ),
  child: Text('Start'),
)


           ],
      ),
  ));
  }
  }
