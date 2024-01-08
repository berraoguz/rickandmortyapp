import 'package:flutter/material.dart';
import 'package:rickandmortyapp/pages/charecter_pages.dart';
import 'package:rickandmortyapp/pages/home_pages.dart';
import 'package:go_router/go_router.dart';
import 'package:rickandmortyapp/provider/api_provider.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomePage();
  },
  routes: [
    GoRoute(path: 'character',
    builder: (context, state) {
      return const CharacterPages();
    },
   )
  ])
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApiProvider(),
      child: MaterialApp.router(
        title: 'Rick And Morty App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true
        ),
        routerConfig: _router,
      ),
    );
  }
}





