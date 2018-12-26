import 'package:flutter/material.dart';
import '../components/header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Home'),
      body: Text('Home Screen'),
    );
  }
}