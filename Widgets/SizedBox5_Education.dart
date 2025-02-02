import 'package:flutter/material.dart';
import 'package:my_protfolio/constatn/constant.dart';
import 'package:my_protfolio/utils/SizedBox5_Education_Container.dart';

class Sizedbox5Education extends StatelessWidget {
  var deviceHeigth, deviceWidth;
  Sizedbox5Education({super.key, this.deviceHeigth, this.deviceWidth});

  @override
  Widget build(BuildContext context) {
    deviceHeigth = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: deviceHeigth,
        width: deviceWidth,        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Education',
              style: TextStyle(fontSize: HeadingFontSize, color: HeadingColor,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
              
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'These are some of the my past qualifications',
              style: TextStyle(fontSize: deviceWidth * 0.009),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: deviceHeigth * 0.80,
              width: deviceWidth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox5_Education_Container(
                    deviceHeigth: deviceHeigth,
                    deviceWidth: deviceWidth,
                    CollageName: 'KLE Institue of Technology Hubli',
                    QulificationName: 'BE - Mechnical',
                  ),
                  SizedBox5_Education_Container(
                      deviceHeigth: deviceHeigth,
                      deviceWidth: deviceWidth,
                      CollageName:
                          'K.H.Kabbur Insititue of Eng & Technology Dharwad',
                      QulificationName: 'Diploma - Mechatronics'),
                  SizedBox5_Education_Container(
                      deviceHeigth: deviceHeigth,
                      deviceWidth: deviceWidth,
                      CollageName: 'Pavan English Mediam High School',
                      QulificationName: 'SSLC')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
