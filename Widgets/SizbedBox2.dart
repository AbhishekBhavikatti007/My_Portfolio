import 'package:flutter/material.dart';
import 'package:my_protfolio/constatn/constant.dart';

class Sizbedbox2 extends StatelessWidget {
  var deviceHeigth;
  var deviceWidth;
  Sizbedbox2({super.key, this.deviceHeigth, this.deviceWidth});

  @override
  Widget build(BuildContext context) {
    deviceHeigth = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: bothSidePadding),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            // Conatiner 1 - Image
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                width: deviceWidth * 0.25,
                height: deviceHeigth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://portfolio-fullstack-demo.vercel.app/assets/aboutSectionMemoji.PNG'))),
              ),
            ),
            // Conatiner 2 Text Details
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abhishek',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceHeigth * 0.08),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 199, 195, 195),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Flutter Dev'),
                    ),
                  ),
                  SizedBox(height: 9,),
                  Text(
                    'I m a flutter developer focused on Mobile and web application. Currently residing in Bangalore.\nCurrently seeking exciting opportunities as a Flutter developer to leverage my skills in a dynamic and innovative environment.\nEager to collaborate with a talented team to deliver exceptional mobile solutions that make a difference.\nCommitted to continuous learning and staying updated with the latest industry trends.',
                    style: TextStyle(fontSize: deviceWidth * 0.0075),
                  ),
                ],
              ),
            ),
            // Conatiner 3 Socail Media buttons
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                    width: deviceWidth * 0.055,
                    height: deviceHeigth * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.amber
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
