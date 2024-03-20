import 'package:flutter/material.dart';
import 'package:my_quize_app/screens/score.dart';

class question extends StatelessWidget {
  const question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Padding(padding: EdgeInsets.only(top:30,bottom: 20,right: 12,left: 12),

child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
Row(
  children: [
        Text("Question Number :",
        style: TextStyle(fontSize: 25,
        color:Color.fromARGB(255, 45, 101, 45)),),
                Text("1 /5",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 63, 0))),
                


  ],
),
SizedBox(height: 30,),

  Text("What is the capital city of Saudi Arabia? :",
      style: TextStyle(fontSize: 18,
    color:Color.fromARGB(255, 45, 101, 45)),),
      SizedBox(height: 19,),

       ElevatedButton(onPressed: (){}, style: ButtonStyle(
    fixedSize: MaterialStateProperty.all<Size>(
      Size(300, 50), // Set the width to 200 and height to 50
    ),
        
             backgroundColor: MaterialStateProperty.all<Color>(
      Color.fromARGB(255, 231, 237, 207),
    ),
  ),
  child: Text('Qassim', style: TextStyle(fontSize: 17,),
              ),
),
      SizedBox(height: 12,),


              ElevatedButton(onPressed: (){}, style: ButtonStyle(
    fixedSize: MaterialStateProperty.all<Size>(
      Size(300, 50), // Set the width to 200 and height to 50
    ),
        
             backgroundColor: MaterialStateProperty.all<Color>(
      Color.fromARGB(255, 231, 237, 207),
    ),
  ),
  child: Text('Dammam', style: TextStyle(fontSize: 17,),
              ),
),
      SizedBox(height: 12,),

                            ElevatedButton(onPressed: (){},style: ButtonStyle(
    fixedSize: MaterialStateProperty.all<Size>(
      Size(300, 50), // Set the width to 200 and height to 50
    ),
        
             backgroundColor: MaterialStateProperty.all<Color>(
      Color.fromARGB(255, 231, 237, 207),
    ),
  ),
  child: Text('Riyad', style: TextStyle(fontSize: 17,),
              ),
),

SizedBox(height: 350,),
ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => score()),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(300, 50), 
          
                    ),
                     backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(240, 127, 199, 158),
              ),
                  ),
                  child: Text('Submit',
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,
                     color: Color.fromARGB(255, 231, 239, 201)),)
                ),

]),
)
    );
  }
}