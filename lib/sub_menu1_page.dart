
import 'package:flutter/material.dart';
class SubMenu1Page extends StatefulWidget {
  const SubMenu1Page({Key? key}) : super(key: key);

  @override
  State<SubMenu1Page> createState() => _SubMenu1PageState();
}

class _SubMenu1PageState extends State<SubMenu1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){

          },
          child: Text('Sub Menu 1'),
        ),
      ),
    );
  }
}
