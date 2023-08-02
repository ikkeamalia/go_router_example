

import 'package:flutter/material.dart';

class SubMenu2Page extends StatefulWidget {
  const SubMenu2Page({Key? key}) : super(key: key);

  @override
  State<SubMenu2Page> createState() => _SubMenu2PageState();
}

class _SubMenu2PageState extends State<SubMenu2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){

          },
          child: Text('Sub Menu 2'),
        ),
      ),
    );
  }
}
