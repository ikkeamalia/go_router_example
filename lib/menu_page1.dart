
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPage1 extends StatefulWidget {
  const MenuPage1({Key? key}) : super(key: key);

  @override
  State<MenuPage1> createState() => _MenuPage1State();
}

class _MenuPage1State extends State<MenuPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Router.neglect(context, () {
              context.go("/menu_page1/sub_menu1");
            });
          },
          child: Text('Ke Sub Menu 1'),
        ),
      ),
    );
  }
}
