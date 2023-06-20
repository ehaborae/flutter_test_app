import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/favorites.dart';
import 'package:flutter_test_app/screens/home.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'models/favorites.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: FavoritesPage.routeName,
          builder: (context, state) => const FavoritesPage(),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp.router(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
