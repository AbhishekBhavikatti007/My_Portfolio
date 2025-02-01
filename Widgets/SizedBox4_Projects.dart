// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:my_protfolio/Data/practi_Project_data.dart';
import 'package:my_protfolio/constatn/constant.dart';


class Sizedbox4Projects extends StatelessWidget {
  var deviceHeigth, deviceWidth;
  List<PractiProjectData> practiProjectdata;
  Sizedbox4Projects({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeigth,
    required this.practiProjectdata,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    deviceHeigth = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: bothSidePadding),
      child: Container(
        width: deviceWidth,
        height: deviceHeigth,
        // color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Header Text
            Text(
              'My Practice Projects',
              style: TextStyle(
                  fontSize: HeadingFontSize, fontWeight: FontWeight.bold),
            ),
            // Second Text and Image
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Here are a few practice projects I've worked on.",
                  style: TextStyle(fontSize: deviceWidth * 0.009),
                ),
                Container(
                  height: deviceHeigth * 0.099,
                  width: deviceWidth * 0.065,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://portfolio-fullstack-demo.vercel.app/assets/projMemoji.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            //Project display Container
            SizedBox(
              height: deviceHeigth * 0.60,
              width: deviceWidth * 0.40,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: practiProjectdata.map((practiProjectdata) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Container(
                      height: deviceHeigth * 0.5,
                      width: deviceWidth * 0.09,
                      decoration: BoxDecoration(
                        gradient:
                            SweepGradient(colors: [Colors.black, Colors.white]),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: deviceHeigth * 0.39,
                            width: deviceWidth,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/project.png')),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              practiProjectdata.ProjectName!,
                              style: TextStyle(
                                  fontSize: deviceWidth * 0.01,
                                  color: Colors.lightGreenAccent,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: [
                                Text(
                                  'TechStack:- ',
                                  style: TextStyle(
                                      fontSize: deviceWidth * 0.009,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  practiProjectdata.TechStacFlutter!,
                                  style: TextStyle(
                                      fontSize: deviceWidth * 0.009,
                                      color: Colors.white),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: [
                                Text(
                                  'Liraries:- ',
                                  style: TextStyle(
                                      fontSize: deviceWidth * 0.009,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                                Expanded(
                                  child: Text(
                                    practiProjectdata.Libariest!,
                                    style: TextStyle(
                                        fontSize: deviceWidth * 0.009,
                                        color: Colors.white),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
