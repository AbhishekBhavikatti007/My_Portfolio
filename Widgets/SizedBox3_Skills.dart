
import 'package:flutter/material.dart';
import 'package:my_protfolio/Data/mySkills_Data.dart';
import 'package:my_protfolio/constatn/constant.dart';

class SizedBox3_MySkills extends StatelessWidget {
  var deviceHeigth;
  var deviceWidth;
  final List<MyskillsData> myTechnicalSkill;
  final List<MyskillsData> mySoftSkills;
   SizedBox3_MySkills({required this.myTechnicalSkill, this.deviceHeigth, this.deviceWidth,required this.mySoftSkills});
  

  @override
  Widget build(BuildContext context) {
    deviceHeigth = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: bothSidePadding),
      child: SizedBox(
        width: deviceWidth,
        height: deviceHeigth,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text('My Skills',style: TextStyle(fontSize: HeadingFontSize,fontWeight: FontWeight.bold, color:HeadingColor ,decoration: TextDecoration.underline),),
              SizedBox(height: 24,),
              Text('Tiles   in    blue    are   some    of    my    major   skills',style: TextStyle(fontSize:deviceWidth* 0.016,color: Colors.blue),),
              SizedBox(height: 24,),
              Row(
                children: [
                  //Technical skills Container 
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.white,Colors.black]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: deviceHeigth * 0.78 ,
                    width: deviceWidth * 0.35,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children:myTechnicalSkill.map((myTechnicalSkills){
                              return Container(
                                height: deviceHeigth * 0.60,
                                width: deviceWidth * 0.25,
                                padding: EdgeInsets.all( deviceWidth * 0.05),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: deviceHeigth * 0.3,
                                      width: deviceWidth * 0.3,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage(myTechnicalSkills.ImageUrl),fit: BoxFit.contain), 
                                        borderRadius: BorderRadius.circular(20),
                                                                                 
                                      ),
                                    ),
                                    Text(myTechnicalSkills.skill,style: TextStyle(fontSize: 38,color: const Color.fromARGB(196, 11, 11, 11)),),
                                  ],
                                ),
                              );
                        }).toList(),
                      
                    ),
                  ),
                  // Soft skills Container
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black, Colors.white]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: deviceHeigth * 0.78 ,
                    width: deviceWidth * 0.35,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children:mySoftSkills.map((mySoftSkills){
                              return Container(
                                height: deviceHeigth * 0.60,
                                padding: EdgeInsets.all( deviceWidth * 0.05),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: deviceHeigth * 0.3,
                                      width: deviceWidth * 0.25,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage(mySoftSkills.ImageUrl),fit: BoxFit.contain), 
                                        borderRadius: BorderRadius.circular(8)                                         
                                      ),
                                    ),
                                    Text(mySoftSkills.skill,style: TextStyle(fontSize: 38,color: const Color.fromARGB(196, 11, 11, 11)),),
                                  ],
                                ),
                              );
                        }).toList(),
                      
                    ),
                  ),

                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}