import 'package:flutter/material.dart';

class ProfileOtherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Language',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff303841),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
            Divider(height: 10.0,color: Colors.black87,),

            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Currency',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff303841),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
