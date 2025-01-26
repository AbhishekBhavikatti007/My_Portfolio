import 'package:flutter/material.dart';
import 'package:my_protfolio/constatn/constant.dart';

// ignore: must_be_immutable
class SizedBox1 extends StatelessWidget {
  var deviceHeigth;
  var deviceWidth;
  SizedBox1({super.key, this.deviceHeigth,this.deviceWidth});

  @override
  Widget build(BuildContext context) {
    deviceHeigth = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: bothSidePadding),
      child: SizedBox(
                    child: Row(
                      children: [
                        SizedBox(
                            height: deviceHeigth,
                            width: deviceWidth * 0.60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 49, vertical: 25),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Hey,I'm",
                                        style: TextStyle(
                                            fontSize: deviceWidth * 0.04,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(178, 8, 9, 0)),
                                      ),
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Text(
                                        "Abhishek",
                                        style: TextStyle(
                                            fontSize: deviceWidth * 0.04,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                255, 242, 191, 40)),
                                      )
                                    ],
                                  ),
                                ),
                                //About me Text Button
                                Padding(
                                  padding: const EdgeInsets.only(left: 41),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      width: 150,
                                      child: TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(),
                                        child: Row(
                                          children: [
                                            Text(
                                              'About Me',
                                              style: TextStyle(
                                                fontSize: deviceWidth * 0.01,
                                                color: const Color.fromARGB(
                                                    183, 22, 11, 141),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Icon(Icons.arrow_forward_ios)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                        //First Image
                        Expanded(
                          child: Container(
                            height: deviceHeigth,
                            width: deviceWidth * 0.20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://portfolio-fullstack-demo.vercel.app/assets/web.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
    );
  }
}