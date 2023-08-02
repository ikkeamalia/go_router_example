import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPage3 extends StatefulWidget {
  const MenuPage3({Key? key}) : super(key: key);

  @override
  State<MenuPage3> createState() => _MenuPage3State();
}

class _MenuPage3State extends State<MenuPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Router.neglect(context, () {
              context.go("/menu_page3/sub_menu3");
            });
          },
          child: Text('Ke Sub Menu 3'),
        ),
      ),
    );
  }
}
