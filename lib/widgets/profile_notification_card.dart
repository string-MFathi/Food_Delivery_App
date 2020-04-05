import 'package:flutter/material.dart';

class ProfileNotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text('App Notifications',
                 style: TextStyle(
                   fontSize: 15.0,
                   color: Color(0xff303841),
                   fontWeight: FontWeight.bold,
                 ),
                 ),
                 Switch(value: true,
                   activeColor: Color(0xffe23e57),
                   onChanged: (bool value){

                   },
                 ),
               ],
             ),
              Divider(height: 10.0, color: Colors.black87,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('App Notifications',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff303841),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Switch(value: false,
                  onChanged: (bool value){},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}