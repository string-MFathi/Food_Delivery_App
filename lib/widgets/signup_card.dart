import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpCard extends StatelessWidget {

  Widget _BuildEmailFeild(){
    return TextField(
      onChanged: (value){},
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0,),
        ),
        hintText: 'Email',
        hintStyle: TextStyle(
          color: Colors.black38,
        ),
      ),
    );
  }

  Widget _BuildPasswordFeild(){
    return TextField(
      onChanged: (value){},
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0,),
        ),
        hintText: 'Password',
        suffixIcon: Icon(Icons.visibility_off, size: 20.0,),
        hintStyle: TextStyle(
          color: Colors.black38,
        ),
      ),

      obscureText: true,
    );
  }

  Widget _BuildUserNameFeild(){
    return TextField(
      onChanged: (value){},
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0,),
        ),
        hintText: 'Email or Username',
        hintStyle: TextStyle(
          color: Colors.black38,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            height: 200.0,
            width: 350.0,
            child: Center(
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
        ),
        Material(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0 , right: 30.0, left: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _BuildUserNameFeild(),
                SizedBox(height: 10.0,),
                _BuildEmailFeild(),
                SizedBox(height: 10.0,),
                _BuildPasswordFeild(),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: MaterialButton(
            minWidth: 330.0,
            color: Colors.orangeAccent,
            onPressed: (){},
            child: Text(
              'Register Now',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 20.0 , right: 30.0, left: 30.0),
          child: Row(
            children: <Widget>[
              Text(
                "Already have an account?  ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
