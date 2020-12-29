import 'input_page.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';


class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text("Your Result",style: TextStyle(fontSize: 50.0,
                fontWeight: FontWeight.bold,),),
            ),
          ),
          Expanded(flex:5 ,child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Center(child: Text(resultText, style:kResultTextStyle ,))),
                Expanded(child: Center(child: Text(bmiResult , style: kBmiTextStyle,))),
                Expanded(child: Container(
                  child: Center(
                    child: Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),),),)
              ],
            ),
          )),
          BottomButton(buttonTitle: "RE-CALCULATE", onTap:(){
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => InputPage()),
            );
          },),
        ],
      )
    );
  }
}
