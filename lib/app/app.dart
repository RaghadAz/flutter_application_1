import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/presentation/resources/routes_manager.dart';
import 'package:flutter_application_1/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // named constructor
  MyApp._internal();

  static final MyApp _instance = MyApp._internal(); //single instance

  factory MyApp() => _instance; //factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
