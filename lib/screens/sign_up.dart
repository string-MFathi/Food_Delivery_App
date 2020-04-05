import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/signup_card.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: <Widget>[
          SignUpCard(),
        ],
      ),
    );
  }
}
