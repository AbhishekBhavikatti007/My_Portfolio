
import 'package:flutter/material.dart';
import 'package:my_protfolio/constatn/constant.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.blue,
      appBar: myAppBar,
      drawer: myDrawer,
    );
  }
}