
import 'package:busn/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttonpage extends StatelessWidget {
  const Buttonpage({super.key,  required this.onTap, required this.Buttontitle});
final String Buttontitle;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: double.infinity,
        color: Colors.greenAccent,
        child: Center(child: Text(Buttontitle,
          style: Textstylefrom,)),
      ),
    );
  }
}
