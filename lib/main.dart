import 'package:flutter/material.dart';
import 'package:pertemuan9/home_page.dart';
import 'package:pertemuan9/named_route.dart';
import 'package:pertemuan9/Route_generator.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    '/': (context) => HomePage(),
    '/named': (context) => NamedRoute(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

// Buat Class untuk RouteGenerator
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => GeneratorRoute());
  }
}