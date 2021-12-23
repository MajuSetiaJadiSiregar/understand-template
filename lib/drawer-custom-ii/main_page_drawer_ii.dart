import 'package:flutter/material.dart';
import 'package:refactor_template/drawer-custom-ii/navigation_drawer_ii_widget.dart';

class MainPageDrawerIi extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('abc'),),
      drawer: NavigationDrawerIiWidget(),
    );
  }
}