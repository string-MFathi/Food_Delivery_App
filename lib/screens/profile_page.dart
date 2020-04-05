import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/profile_info.dart';
import 'package:fooddeliveryapp/widgets/profile_account_item.dart';
import 'package:fooddeliveryapp/widgets/profile_notification_card.dart';
import 'package:fooddeliveryapp/widgets/profile_other_card.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0, color: Colors.black),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffeeeeee),
        elevation: 0.0,

        ),
      body: ListView(
        children: <Widget>[
          ProfileInfo(),
          Padding(
            padding: EdgeInsets.only(left: 20.0,),
            child: Text('Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          ProfileAccountItem(),
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0,),
            child: Text('Notification',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          ProfileNotificationCard(),
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0,),
            child: Text('Other',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          ProfileOtherCard(),
          SizedBox(height: 30.0,),
      ],
     ),
    );
  }
}
