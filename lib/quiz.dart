import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
   
  final  questionIndex; //final is nothing but runtime constant in which it is initialized during runtime and remained constant
                          // whereas const is compiling time constant in which it is initialized during coding itself
  final Questionanswer;
  final questions;
  Quiz({this.Questionanswer,this.questions,this.questionIndex}); //This is a constructor definition similar to initializing the first arguement to the answerQuestion variable of this class
  
  @override
  Widget build(BuildContext context) {
    return Container(
    child :Column(children: [Question(questions[questionIndex]['questionText'] as String,), 
                ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){  //This map() is similar to python map which excecutes all the elements in a list through a given function
                 return Answer(()=>Questionanswer(answer["Score"]),answer["Text"] as String);                                  //Here the list is given outside the map() and the func is given inside the map() arguement.
                                                                                         //Here the answer is each element in the list and it is passed to the function
                }).toList(),//This converts the result into a list of widgets,finally list of strings is converted to a list of widgets
                            // ... operater extracts the given list to individual elements 

               ],));
  }}