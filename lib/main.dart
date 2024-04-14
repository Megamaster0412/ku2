import 'package:flutter/material.dart';

import 'package:virtualku/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Virtual KU',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginPage(),
      );
}
