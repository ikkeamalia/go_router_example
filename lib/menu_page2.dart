

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPage2 extends StatefulWidget {
  const MenuPage2({Key? key}) : super(key: key);

  @override
  State<MenuPage2> createState() => _MenuPage2State();
}

class _MenuPage2State extends State<MenuPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Router.neglect(context, () {
              context.go("/menu_page2/sub_menu2");
            });
          },
          child: Text('Ke Sub Menu 2'),
        ),
      ),
    );
  }
}
