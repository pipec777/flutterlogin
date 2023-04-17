import 'package:flutter/material.dart';
import 'package:flutter_login/src/app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Login',
      home: Login(),
    );
  }
}
