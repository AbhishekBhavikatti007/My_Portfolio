import 'package:flutter/material.dart';
import 'package:my_protfolio/Screens/homePage.dart';

void main(){
  runApp(My_Protfolio());
}

class My_Protfolio extends StatelessWidget {
  const My_Protfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPortfolio_Website',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }    
}