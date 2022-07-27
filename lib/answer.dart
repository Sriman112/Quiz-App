import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
   
  final String answerText; //final is nothing but runtime constant in which it is initialized during runtime and remained constant
                          // whereas const is compiling time constant in which it is initialized during coding itself
  final answerQuestion;
  Answer(this.answerQuestion,this.answerText); //This is a constructor definition similar to initializing the first arguement to the answerQuestion variable of this class
  
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity, //container will have the width of all the app
    child:  RaisedButton(
               child:Text(answerText),
               textColor:Color.fromARGB(179, 194, 236, 7),
               color: Color.fromARGB(255, 10, 10, 10), 
               onPressed: answerQuestion,)

    );
  }}