import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  
  final String questionText; //we cant change the value once it is initialized
  Question(this.questionText);//This is a constructor definition similar to initializing the first arguement to the question_text variable of this class
  
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity, //container will have the width of all the app
    margin: EdgeInsets.all(30),
    child: Text(questionText,
                style: TextStyle(fontSize:28),
                textAlign: TextAlign.center,   //It will align the text in the centre of the width of the container,before declaring container the text will only occupy the text space
                ),

    );
      
    
  }
}