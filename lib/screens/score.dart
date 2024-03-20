import 'package:flutter/material.dart';

class score extends StatelessWidget {
  const score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SizedBox(
  height: MediaQuery.of(context).size.height,
  child:   Padding(
    padding: const EdgeInsets.all(9),
    child: Column(

    mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
    
    
    Text("Hello Joud, you have completed the quiz and your score is ",style: TextStyle(fontSize: 17,),textAlign: TextAlign.center,),
    SizedBox(height: 25,),
    Text("9/10",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.red),)
    ,TextButton(onPressed: (() { }), child: Text("Play again"))
    
    
    ]),
  ),
),

    );
  }
}