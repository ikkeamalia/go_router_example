

import 'package:flutter/material.dart';

class SubMenu3Page extends StatefulWidget {
  const SubMenu3Page({Key? key}) : super(key: key);

  @override
  State<SubMenu3Page> createState() => _SubMenu3PageState();
}

class _SubMenu3PageState extends State<SubMenu3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){

          },
          child: Text('Sub Menu 3'),
        ),
      ),
    );
  }
}
