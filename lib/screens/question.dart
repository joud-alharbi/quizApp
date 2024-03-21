import 'package:flutter/material.dart';
import 'package:my_quize_app/screens/score.dart';

class question extends StatefulWidget {
    final List? questionsAndAnswersList;

   question({super.key , this.questionsAndAnswersList});

  @override
    State<question> createState() => _questionState();}

class _questionState extends State<question> {
  int _currentIndex = 0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    body:Padding(padding: EdgeInsets.only(top:30,bottom: 20,right: 12,left: 12),
    
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    Row(
      children: [
          Text("Question Number :",
          style: TextStyle(fontSize: 25,
          color:Color.fromARGB(255, 48, 62, 67)),),
                   Text(
                      "${_currentIndex + 1}/  ${widget.questionsAndAnswersList!.length}  ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 112, 118, 90))),
    
    
      ],
    ),
    SizedBox(height: 30,),
    
     Text(widget.questionsAndAnswersList![_currentIndex]["ques"],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 48, 62, 67),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),

               for (int i = 0;
                  i <
                      widget.questionsAndAnswersList![_currentIndex]["answers"]
                          .length;
                  i++)
                ElevatedButton(
                    onPressed: () {
                      if ((_currentIndex + 1) <
                          widget.questionsAndAnswersList!.length) {
                        setState(() {
                          // _currentIndex = _currentIndex + 1;
                          _currentIndex++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ScoreScreen(),
                          ),
                        );
                      }
                    },
                                        style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 40), 
                      
                      ),
                       backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 210, 222, 167),
                       ),),
                    child: Text(widget.questionsAndAnswersList![_currentIndex]
                        ["answers"][i])),
    
    
    ]),
    )
      ),
    );
  }
}