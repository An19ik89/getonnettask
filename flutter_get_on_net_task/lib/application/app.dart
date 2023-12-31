import 'package:flutter/material.dart';
import 'package:flutter_get_on_net_task/presentation/resources/routes_manager.dart';
import 'package:flutter_get_on_net_task/presentation/resources/theme_manager.dart';


class MyApp extends StatefulWidget {
  MyApp._internal(); // private named constructor
  int appState = 0;
  static final MyApp instance =
  MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.movieListRoute,
      theme: getApplicationTheme(),
    );
  }
}