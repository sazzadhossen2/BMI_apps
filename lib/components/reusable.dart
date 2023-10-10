

import 'package:flutter/cupertino.dart';

class Reusablecaed  extends StatelessWidget{
// const Reusablecaed({super.key});
  final Color bycolor;
  final Widget? cardchild;
  final VoidCallback ?onCardClick;
  Reusablecaed({required this.bycolor,this.cardchild,this.onCardClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardClick,
      child: Container(

        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color:bycolor,


        ),
        child: cardchild,
      ),
    ) ;
  }

}