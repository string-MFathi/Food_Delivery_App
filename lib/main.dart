import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffe23e57),
      ),
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}

