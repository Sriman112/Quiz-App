import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
final int resultScore;

String finalText="";
final ResetApp;
Result(this.resultScore,this.ResetApp);
resultFunction(){

if(resultScore>15)
{
  finalText="You are my type!!!";

}
else if(resultScore>4&&resultScore<=15)
{
finalText="You are not my type!!!";

}
else {
finalText="Who the Hell are you!!!";

}
}
  @override
  Widget build(BuildContext context) {
    resultFunction();
    return Center(
          child: Column(
          children:[
           Text("Your Score is $resultScore \n"+finalText,
           style: TextStyle(fontSize:28,fontWeight:FontWeight.bold),
           textAlign: TextAlign.center, ),
           FlatButton(
               child:Text("Reset Quiz"),
               textColor:Color.fromARGB(179, 227, 228, 221),
               color: Color.fromARGB(255, 211, 15, 15), 
               onPressed: ResetApp,),],)

    );
  }}
    