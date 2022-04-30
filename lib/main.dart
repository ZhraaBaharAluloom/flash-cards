import 'package:flash_cards/pages/add_collection.dart';
import 'package:flash_cards/pages/home.dart';
import 'package:flash_cards/pages/signin.dart';
import 'package:flash_cards/pages/signup.dart';
import 'package:flash_cards/widgets/collections.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'robot'),
      debugShowCheckedModeBanner: false,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => Home(),
      ),
      GoRoute(
        path: '/signin',
        builder: (BuildContext context, GoRouterState state) => const Signin(),
      ),
      GoRoute(
        path: '/signup',
        builder: (BuildContext context, GoRouterState state) => const Signup(),
      ),
      GoRoute(
        path: '/collections',
        builder: (BuildContext context, GoRouterState state) => Collections(),
      ),
      GoRoute(
        path: '/add_collection',
        builder: (BuildContext context, GoRouterState state) => AddCollection(),
      ),
    ],
  );
}
