import 'package:flutter/material.dart';
import '../components/header.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Login'),
      body: Text('Login Screen'),
    );
  }
}
