import 'package:flutter/material.dart';
import 'package:my_protfolio/Resposive/desktop_Scaffold.dart';
import 'package:my_protfolio/Resposive/mobile_Scaffold.dart';
import 'package:my_protfolio/Resposive/responsive_layout.dart';
import 'package:my_protfolio/Resposive/tablet_Scaffold.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: mobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold());
  }
}
