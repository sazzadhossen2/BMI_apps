
import 'package:busn/components/button.dart';
import 'package:busn/constant.dart';
import 'package:busn/components/reusable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  final String bmiresult;
  final String resultext;
  final String interpretation;
  const Resultpage({super.key, required this.bmiresult, required this.resultext, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cheek BMI"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text("YOUR RESULT",style: Textstylefrom,))),
          Expanded(flex: 5,
              child: Reusablecaed(bycolor: Kactivecolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultext,style: klableTextstylee,),
                  Text(bmiresult,style:NumberTextstyle ,),
                  Text(interpretation,textAlign: TextAlign.center,style: klableTextstylee,)
                ],
              ),
              )),
          Buttonpage(onTap: (){
            Navigator.pop(context);
          }, Buttontitle: "Re-Calculate Your BMI",)
        ],
      ),
    );
  }
}
