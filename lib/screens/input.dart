import 'dart:ui';

import 'package:busn/calculate.dart';
import 'package:busn/components/button.dart';
import 'package:busn/constant.dart';
import 'package:busn/components/icon.dart';
import 'package:busn/screens/result.dart';
import 'package:busn/components/reusable.dart';
import 'package:busn/components/roundicon_button.dart';
import 'package:flutter/material.dart';
enum Gender{male,femal,none}
class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Gender selectgender =Gender.none;

int height =180;
int weight =65;
int age =18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Apps"),),
      body: Column(
        children: [
      Expanded(
      child: Row(
            children: [
              Expanded(child: Reusablecaed(
                onCardClick: (){
                  setState(() {

                    selectgender=(Gender.male);

                  });
                },
                bycolor:selectgender==Gender.male?
                Kactivecolor:
                Kinactive,
              cardchild: Iconwigwt(bincon:Icons.male,
                  lable: "MALE"),
              )),
              Expanded(child: Reusablecaed(
                onCardClick: (){
                  setState(() {

                    selectgender=Gender.femal;
                  });
                },
                cardchild: Iconwigwt(bincon:Icons.female, lable: "FEMALE"),
                bycolor:selectgender==Gender.femal?
                Kactivecolor:
                Kinactive
    ,)),
            ],)
          ),
          Expanded(child: Reusablecaed(bycolor: Color(0xFFa8edea),
          cardchild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Height",style: klableTextstyle,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text("$height",
                    style: NumberTextstyle,),
                  Text("cm",style: klableTextstyle,)
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Kinactive,
                  thumbColor: Colors.pink,
                  overlayColor: Colors.purple.withOpacity(0.12),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                ),
                child: Slider(value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                  //  activeColor:Colors.purple,
                    //inactiveColor: Kinactive,
                    onChanged: (double newvalue){
setState(() {
  height=newvalue.round();
});

                }),
              )
            ],
          ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Reusablecaed(bycolor: Color(0xFFfed6e3),
                  cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text
                       ("Weight",style: klableTextstyle,),
                    Text("$weight",style: NumberTextstyle,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Roundiconbutton(icon: Icons.minimize_rounded, onPressed: (){
                             weight--;
                             setState(() {

                             });
                           }),
                           Roundiconbutton(icon: Icons.add, onPressed: (){
                             weight++;
                             setState(() {

                             });
                           })

                         ],
                       ),
                  ],
                ),

                )
                ),
                Expanded(child: Reusablecaed(bycolor: Color(0xFFb490ca),
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Age",style:klableTextstyle,),
                    Text("$age",style: NumberTextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Roundiconbutton(icon: Icons.minimize, onPressed: (){
                          setState(() {
                            age--;
                          });
                        }),
                        Roundiconbutton(icon: Icons.add, onPressed: (){
                          setState(() {
                            age++;
                          });
                        })
                      ],
                    )
                  ],
                ),
                )),
              ],
            ),
          ),
Buttonpage(
    onTap: (){
      Calculate brain =  Calculate(weight: weight, height: height);
 Navigator.push(context, MaterialPageRoute(builder: (context){
    return Resultpage(

      bmiresult:brain.calculatebmi() ,
      resultext:brain.getResult() ,
      interpretation:brain.getInterpretation(),
    );
  }));

     // print(brain.calculatebmi());
}, Buttontitle: "Calculate your BMI")
        ],
      ),
    );
  }
}
