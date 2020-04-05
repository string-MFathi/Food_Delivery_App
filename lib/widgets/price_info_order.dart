import 'package:flutter/material.dart';

Widget buildContainer(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
    height: 240.0,
    child: Column(
      children: <Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Cart Total', style: TextStyle(fontSize: 18.0 , color: Color(0xff303841), fontWeight: FontWeight.bold,),),
            Text('32.0',style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff303841), fontSize: 20.0),),
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Discount', style: TextStyle(fontSize: 18.0 , color: Color(0xff303841), fontWeight: FontWeight.bold,),),
            Text('4.0',style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff303841), fontSize: 20.0),),
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Tax', style: TextStyle(fontSize: 18.0 , color: Color(0xff303841), fontWeight: FontWeight.bold,),),
            Text('0.50',style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff303841), fontSize: 20.0),),
          ],
        ),
        SizedBox(height: 40.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Subtotal', style: TextStyle(fontSize: 20.0 , color: Color(0xff303841), fontWeight: FontWeight.bold,),),
            Text('36.50',style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff303841), fontSize: 20.0),),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 35.0),
          height: 50.0,
          width:400.0,
          decoration: BoxDecoration(
            color: Color(0xffe23e57),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Center(child: Text('Proceed to Checkout', style: TextStyle(fontWeight: FontWeight.bold,
              color: Color(0xffeeeeee), fontSize: 20.0 ),)),
        ),
      ],
    ),
  );
}