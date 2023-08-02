import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  final Widget content;

  const HomePage({Key? key, required this.content}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = (MediaQuery.of(context).size.width > 500);

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: isLargeScreen,
            destinations: destinationNav(),
            selectedIndex: selectedIndex(context),
            onDestinationSelected: (index) {
              onDestinationSelected(index, context);
            },
          ),
          Expanded(child: widget.content)
        ],
      ),
      bottomNavigationBar: isLargeScreen
          ? Container(height: 0)
          : BottomNavigationBar(
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black87,
              onTap: (int val) {
                setState(() {
                  _selectedIndex =  val;
                  onDestinationSelected(_selectedIndex, context);
                });
              },
              items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    activeIcon: Icon(Icons.favorite),
                    label: 'Menu 1',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_border),
                    activeIcon: Icon(Icons.book),
                    label: 'Menu 2',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.star_border),
                    activeIcon: Icon(Icons.star),
                    label: 'Menu 3',
                  ),
                ]),
    );
  }

  List<NavigationRailDestination> destinationNav() {
    return const <NavigationRailDestination>[
      NavigationRailDestination(
        icon: Icon(Icons.favorite_border),
        selectedIcon: Icon(Icons.favorite),
        label: Text('Menu 1'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.bookmark_border),
        selectedIcon: Icon(Icons.book),
        label: Text('Menu 2'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.star_border),
        selectedIcon: Icon(Icons.star),
        label: Text('Menu 3'),
      ),
    ];
  }

  void onDestinationSelected(int index, BuildContext context) {
    switch (index) {
      case 0:
        _selectedIndex = 0;
        GoRouter.of(context).go('/menu_page1');
        break;
      case 1:
        _selectedIndex = 1;
        GoRouter.of(context).go('/menu_page2');
        break;
      case 2:
        _selectedIndex = 2;
        GoRouter.of(context).go('/menu_page3');
        break;
    }
  }

  int selectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/menu_page1')) {
      return 0;
    }
    if (location.startsWith('/menu_page2')) {
      return 1;
    }
    if (location.startsWith('/menu_page3')) {
      return 2;
    }
    return 0;
  }
}
