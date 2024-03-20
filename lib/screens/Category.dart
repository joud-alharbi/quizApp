import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_quize_app/screens/question.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(width: double.infinity,
      child: Column(children: [



        CategoryContainer("math quiz",  Color.fromARGB(255, 215, 239, 223),context),
                CategoryContainer("history quiz", Color.fromARGB(255, 98, 163, 117),context),
        CategoryContainer("programmig quiz", Color.fromARGB(255, 22, 63, 23),context),

//Expanded(
 // child:   Container(
  
  

 //   child: Center(child: Text("math quiz")),
 //   color: Color.fromARGB(255, 57, 207, 105),
  
 // ),
//),
//Expanded(
 // child:   Container(
  
  
  
 //   child: Center(child: Text("history quiz")),
 //   color: Color.fromARGB(255, 54, 126, 76),
  
 // ),
//),
//Expanded(
  //child:   Container(
  
  

  //  child: Center(child: Text("programmig quiz")),
  //  color: Color.fromARGB(255, 16, 60, 19),
  
 // ),
//),
 
      ],
      ),
      ),
    );
  }
  Widget CategoryContainer(String quizName,Color quizColor,context){
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(  context,
                      MaterialPageRoute <Void> (builder : (BuildContext context)=> const question() ,  //(builder: (context) => Category()),
                    ),);
        },
        child: Container(
        child: Center(
          child: Text(quizName,
           style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
        )),
        color:quizColor,
          ),
      ),
    );
  }
  
  }
    
    
    
       
    
      
  