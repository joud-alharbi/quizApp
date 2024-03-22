import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_quize_app/Data/ques_and_answer.dart';
import 'package:my_quize_app/screens/question.dart';


class Category extends StatelessWidget {


  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(width: double.infinity,
      child: Column(children: [



        categoryContainer("math quiz",  Color.fromARGB(255, 215, 239, 223),context,  mathQuizQuestionsAndAnswers),
                categoryContainer("history quiz", Color.fromARGB(255, 98, 163, 117),context,  historyQuizQuestionsAndAnswers),
        categoryContainer("programmig quiz", Color.fromARGB(255, 22, 63, 23),context,programmingQuizQuestionsAndAnswers  ),

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
 Widget categoryContainer(
      String quizName, Color quizColor, context, List qList) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuestionPage(
                questionsAndAnswersList: qList,
              ),
            ),
          );
        },
        child: Container(
          child: Center(
              child: Text(
            quizName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          color: quizColor,
        ),
      ),
    );
  }
}

    
    
       
    
      
  