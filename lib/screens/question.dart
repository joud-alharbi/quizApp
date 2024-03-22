import 'package:flutter/material.dart';
import 'package:my_quize_app/screens/score.dart';

class QuestionPage extends StatefulWidget {
  final List? questionsAndAnswersList;

  const QuestionPage({Key? key, this.questionsAndAnswersList}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int _currentIndex = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Question Number:",
                    style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 48, 62, 67)),
                  ),
                  Text(
                    "${_currentIndex + 1}/${widget.questionsAndAnswersList!.length}",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 112, 118, 90),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                widget.questionsAndAnswersList![_currentIndex]["ques"],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 48, 62, 67),
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  for (int i = 0;
                      i < widget.questionsAndAnswersList![_currentIndex]["answers"].length;
                      i++)
                    ElevatedButton(
                      onPressed: () {
                        if (widget.questionsAndAnswersList![_currentIndex]["correctIndex"] == i) {
                          setState(() {
                            score++; // Increment score if the answer is correct
                          });
                        }
                        if (_currentIndex + 1 < widget.questionsAndAnswersList!.length) {
                          setState(() {
                            _currentIndex++;
                          });
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => ScoreScreen(score: score),
                            ),
                          );
                        }
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(Size(200, 40)),
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 163, 167, 125)),
                      ),
                      child: Text(widget.questionsAndAnswersList![_currentIndex]["answers"][i]),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
