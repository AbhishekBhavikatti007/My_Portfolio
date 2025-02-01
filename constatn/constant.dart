import 'package:flutter/material.dart';

var deviceHeigth;
var deviceWidth;
Color HeadingColor = Color.fromARGB(251, 18, 17, 17);
double HeadingFontSize = 52;
double bothSidePadding = 15;

var myAppBar = AppBar(
  backgroundColor: Colors.black,
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      DrawerHeader(
        child:Icon(Icons.flutter_dash_rounded)),
        ListTile(
          leading: Icon(Icons.home_rounded),
          title: Text("H O M E"),
          onTap: () {},
          hoverColor: Colors.green,
        ),
        ListTile(
          leading: Icon(Icons.switch_account_rounded),
          title: Text("A B O U T"),
          onTap: () {},
          hoverColor: Colors.green,
          
        ),
        ListTile(
          leading: Icon(Icons.cloud_circle_sharp),
          title: Text("P O J  E C T S"),
          onTap: () {},
          hoverColor: Colors.green,
        ),ListTile(
          leading: Icon(Icons.school_rounded),
          title: Text("E D U C A T I O N"),
          onTap: () {},
          hoverColor: Colors.green,
        ),
        ListTile(
          leading: Icon(Icons.work),
          title: Text("E X P E R I N C E"),
          onTap: () {},
          hoverColor: Colors.green,
        ),
        ListTile(
          leading: Icon(Icons.contact_phone),
          title: Text("C O N T A C T"),
          onTap: () {},
          hoverColor: Colors.green,
        ),
    ],
  ),
);