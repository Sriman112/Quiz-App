import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}





class MyApp extends StatefulWidget {

State<MyApp> createState()
 {
   return _MyAppState();//This Underscore makes the class which can only be used in this file
 }
}

//This is only on of the state and setState() calls the build in from only this class and its a stateful widget. and only changes mentioned here are excecuted
class _MyAppState extends State<MyApp>
{
 
var _questions=[
{"questionText":"What is your favourite anime?","answers":[{"Text" :"naruto","Score":10},{"Text":"OPM","Score":5},{"Text":"AOT","Score":0},{"Text" :"Avatar","Score":1}],},
{"questionText":"What is your favourite food?","answers":[{"Text":"Pizza","Score":10},{"Text":"dosa","Score":5},{"Text":"Idly","Score":0},{"Text":"Burger","Score":1}],},
{"questionText":"What is your favourite colour?","answers":[{"Text":"Red","Score":10},{"Text":"Blue","Score":5},{"Text":"Green","Score":1},{"Text":"Orange","Score":0}],},];
int _questionIndex=0; 
var _totalScore=0;
 _Questionanswer(int score)
 {  
   _totalScore+=score;
   setState((){_questionIndex=_questionIndex+1;},);//Here the setState() recalls the build() after changing the values of questionIndex
                                                 //So UI also changes, here stateless widgets like Question is changed by the external input which is done recalling of build()
    
    print('Index Number: $_questionIndex');
 }

 _Resetapp()
 {
   setState((){_questionIndex=0;
   _totalScore=0;});
 }
 Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(appBar:AppBar(title: Text('Test App')),
    body:(_questionIndex<_questions.length)?Quiz(Questionanswer: _Questionanswer, questions:_questions, questionIndex:_questionIndex,)
               :Result(_totalScore,_Resetapp),
               ),);
  } }

