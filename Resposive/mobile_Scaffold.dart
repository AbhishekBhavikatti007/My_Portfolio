
import 'package:flutter/material.dart';
import 'package:my_protfolio/constatn/constant.dart';

class mobileScaffold extends StatefulWidget {
  const mobileScaffold({super.key});

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: myAppBar,
      drawer: myDrawer,
    );
  }
}