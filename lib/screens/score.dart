import 'package:flutter/material.dart';
import 'package:my_quize_app/screens/splash_screen.dart';
import 'package:my_quize_app/utils/global_variable.dart';

class ScoreScreen extends StatelessWidget {
  final int score;

  const ScoreScreen({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: Color.fromARGB(255, 18, 39, 26)),
                children: [
                  const TextSpan(
                    text: "Hello ",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextSpan(
                   text: userNameController.text,// Replace "User" with your username logic
                    style: const TextStyle(
                      color: Color.fromARGB(255, 18, 39, 26),
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: ", you have completed the quiz and your score is ",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextSpan(
                    text: '$score',
                    
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 18, 39, 26),
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => SplashScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(150, 30)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 210, 222, 167),
                ),
              ),
              child: const Text("Play again"),
            ),
          ],
        ),
      ),
    );
  }
}
