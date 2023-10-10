import 'package:busn/components/reusable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../constant.dart';

class Roundiconbutton extends StatelessWidget {
  final IconData icon;
final VoidCallback onPressed;
  const Roundiconbutton({super.key, required this.icon, required this.onPressed});

  get weight => null;
  @override
  Widget build(BuildContext context) {
   return

         RawMaterialButton(
             fillColor: Colors.pink.shade400,
             elevation: 0,
             shape: CircleBorder(),
             constraints: const BoxConstraints.tightFor(width: 56.0,height: 56.0),
             child:Icon(icon,
               color: Colors.white,),
             // colo: Colors.purpleAccent,
             onPressed: onPressed,
   );
  }
}
