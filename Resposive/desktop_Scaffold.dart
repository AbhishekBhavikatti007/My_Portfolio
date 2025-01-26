import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_protfolio/Widgets/SizbedBox2.dart';
import 'package:my_protfolio/Widgets/SizedBox1.dart';
import 'package:my_protfolio/constatn/constant.dart';



class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  var deviceHeigth, deviceWidth;
  @override
  Widget build(BuildContext context) {
    deviceHeigth = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(247, 247, 247, 247),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Side content || Drawer
          myDrawer,
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox1(),
                Sizbedbox2(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
