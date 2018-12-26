import 'package:flutter/material.dart';
import 'src/routes.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}

void main() {
  runApp(MainScreen());
}
