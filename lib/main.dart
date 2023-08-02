import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_go_router/home_page.dart';
import 'package:new_go_router/menu_page1.dart';
import 'package:new_go_router/menu_page2.dart';
import 'package:new_go_router/menu_page3.dart';
import 'package:new_go_router/sub_menu1_page.dart';
import 'package:new_go_router/sub_menu2_page.dart';
import 'package:new_go_router/sub_menu3_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'shell');
//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }

  final _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/menu_page1',
    debugLogDiagnostics: true,
    routes: <RouteBase> [
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return HomePage(content: child);
          },
          routes: [
            GoRoute(
              path: '/menu_page1',
              builder: (BuildContext context, GoRouterState state) {
                return const MenuPage1();
              },
              routes: [
                GoRoute(
                  path: 'sub_menu1',
                  builder: (BuildContext context, GoRouterState state) {
                    return const SubMenu1Page();
                  },
                ),
              ],
            ),
            GoRoute(
              path: '/menu_page2',
              builder: (BuildContext context, GoRouterState state) {
                return const MenuPage2();
              },
              routes: [
                GoRoute(
                  path: 'sub_menu2',
                  builder: (BuildContext context, GoRouterState state) {
                    return const SubMenu2Page();
                  },
                ),
              ],
            ),
            GoRoute(
              path: '/menu_page3',
              builder: (BuildContext context, GoRouterState state) {
                return const MenuPage3();
              },
              routes: [
                GoRoute(
                  path: 'sub_menu3',
                  builder: (BuildContext context, GoRouterState state) {
                    return const SubMenu3Page();
                  },
                ),
              ],
            ),
          ])
    ],
  );
}
