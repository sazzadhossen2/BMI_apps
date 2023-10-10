import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/input.dart';

void main(){
  runApp(Myapps());
}
class Myapps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.purple,
      appBarTheme: AppBarTheme(color: Colors.pink)
    ),
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ) ;
  }

}
