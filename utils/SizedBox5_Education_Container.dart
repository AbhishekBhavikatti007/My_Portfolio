

import 'package:flutter/material.dart';

class SizedBox5_Education_Container extends StatelessWidget {
   SizedBox5_Education_Container({
    super.key,
    required this.deviceHeigth,
    required this.deviceWidth,
    required this.CollageName,
    required this.QulificationName
  });
  final String CollageName;
  String QulificationName;
  final dynamic deviceHeigth;
  final dynamic deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:40.0,left:30.3),
      child: Container(
        height: deviceHeigth * 0.5,
        width: deviceWidth * 0.25,
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [ Colors.white, Colors.black]),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Conatiner 1
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: deviceHeigth * 0.50,
                width: deviceWidth * 0.80,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/edu.png')),                          
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: deviceWidth * 0.045),
              child: Text(QulificationName,style: TextStyle(fontSize:deviceHeigth * 0.04,color: Colors.lightGreenAccent),),
            ),
            Padding(
              padding:  EdgeInsets.only(left: deviceWidth * 0.052),
              child: Text(CollageName,style: TextStyle(fontSize:deviceHeigth * 0.020,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
