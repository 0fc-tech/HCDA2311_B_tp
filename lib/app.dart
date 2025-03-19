import 'package:flutter/material.dart';
import 'package:flutter_twitter/page/home_page.dart';
import 'package:flutter_twitter/page/sign_in_page.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatelessWidget {
  final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (_, __) => SignInPage()),
      GoRoute(
        path: '/home/:email',
        builder:
            (_, state) => HomePage(state.pathParameters["email"] ?? "inconnu"),
      ),
    ],
  );

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Twitter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      routerConfig: router,
    );
  }
}
