import 'package:flutter/material.dart';
import 'package:my_protfolio/constatn/constant.dart';

class Sizedbox5Education extends StatelessWidget {
  const Sizedbox5Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text('Education',style: TextStyle(fontSize: HeadingFontSize),),
            SizedBox(height: 10,),
            Text('These are some of the my past qualifications'),
        ],
      ),
    );
  }
}