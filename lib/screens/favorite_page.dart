import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/notification_card.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffeeeeee),
        elevation: 0.0,
        title: Text(
          'Deals',
          style: TextStyle(
            color: Color(0xff303841),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
        ],
      ),
    );
  }
}
