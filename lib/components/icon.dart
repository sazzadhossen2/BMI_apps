
import 'package:busn/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iconwigwt extends StatelessWidget {
   final IconData bincon;
   final Color bcolor;
   final String lable;

   Iconwigwt({required this.bincon,required this.lable,
    this.bcolor=Colors.white,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
bincon,
          color: bcolor,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
lable,
          style: klableTextstyle,
        ),
      ],

    );
  }
}
