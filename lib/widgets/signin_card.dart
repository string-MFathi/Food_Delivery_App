import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/main_home_page.dart';


class SignInCard extends StatelessWidget {

  Widget _BuildEmailFeild(){
   return TextField(
     onChanged: (value){
     },
     textAlign: TextAlign.start,
     style: TextStyle(color: Colors.white,),
     decoration: InputDecoration(
       enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(
             color: Color(0xffeeeeee),
           width:2.0
         ),
         borderRadius: BorderRadius.circular(20.0),
       ),
       hintText: 'Email or Username',
       fillColor: Color(0xffeeeeee),
       hintStyle: TextStyle(
           color: Color(0xffeeeeee),
         decorationColor: Color(0xffeeeeee),
       ),
     ),
   );
  }

  Widget _BuildPasswordFeild(){
    return TextField(
      onChanged: (value){},
      style: TextStyle(color: Colors.white,),
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(
           color: Color(0xffeeeeee),
         width: 2.0,
         ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Password',
        suffixIcon: Icon(Icons.visibility_off,
          color: Color(0xffeeeeee),
          size: 20.0,),
        hintStyle: TextStyle(
          color: Color(0xffeeeeee),
        ),
      ),

      obscureText: true,
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
            'Login',
            style: TextStyle(
            color: Color(0xffe23e57),
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
          ),
          ),
        ),
      ),
    ),
    Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0 , right: 30.0, left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
            _BuildEmailFeild(),
           SizedBox(height: 20.0,),
           _BuildPasswordFeild(),
            ],
    ),
      ),
      ),

        Padding(
          padding: EdgeInsets.only(top: 20.0,bottom: 20.0 , right: 30.0, left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Forget Password ?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff303841),
                ),
              ),
            ],
          ),
        ),

        MaterialButton(
          onPressed: (){
            Navigator.push(
              context,
             MaterialPageRoute(builder: (context) => MainHomePage()),
            );
          },
          minWidth: 330.0,
          color: Color(0xffe23e57),
          child: Text(
            'Login',
            style: TextStyle(
              color: Color(0xffeeeeee),
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
        ),

    Padding(
      padding: EdgeInsets.only(top: 20.0 , right: 30.0, left: 30.0),
      child: Row(
        children: <Widget>[
          Text(
            "Don't have an account? ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffeeeeee),
            ),
          ),
          Text(
              "Sign Up",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffe23e57),
          ),
          ),
        ],
      ),
    ),
      ],
    );
  }
}
