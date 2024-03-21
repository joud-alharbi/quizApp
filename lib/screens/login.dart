

import 'package:flutter/material.dart';
import 'package:my_quize_app/screens/question.dart';
import 'package:my_quize_app/screens/Category.dart';


class Login extends StatelessWidget {
 final _formKey=GlobalKey <FormState>();

   Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
               // mainAxisAlignment: MainAxisAlignment.start,//
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Image.asset(
                    "assets/finger.jpg",
                   // height: 200,//
                    width: 200,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                     Text(" login to your account ..",
                                   style: TextStyle(fontWeight:FontWeight.bold,fontSize:25,
                         color: Color.fromARGB(255, 45, 101, 45)
                             ,fontFamily: 'SignikaNegative'),),
                  SizedBox(
                    height: 70,
                  ),
                //  Align(
                   // alignment: AlignmentDirectional.centerStart,
                   // child: Text("User Name"),  ),
                               
            
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return"Enter user name !!";}
                      else if (!value.startsWith(RegExp(r'[A-Z]'))) {
      return "Username should start with a capital letter";
    } },
                    decoration: InputDecoration(
                       label:Text("User Name"),
                      enabledBorder: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          width: 3,
                          color: Color.fromARGB(255, 25, 45, 27),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                 // Align(
                 //   alignment: AlignmentDirectional.centerStart,
                 //   child: Text("Password")     ),
                
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Category()),
                          );}
                          },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(310, 60), 
                      
                      ),
                       backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 118, 239, 170),
                ),
                    ),
                    child: Text('Login',
                      style: TextStyle(fontSize: 17,),)
                  ),
                   SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/google.png",
                    width: 30,height: 30, ),
                    SizedBox(width: 10,),
                     Image.asset("assets/facebook.png",
                   width: 30,height: 30,   ),
               SizedBox(width: 10,),
                        Image.asset("assets/linkedin.png",
                    width: 30,height: 30,   ),
            
              
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


//   
  //  - assets/
  //  - assets/