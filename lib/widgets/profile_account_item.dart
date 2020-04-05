import 'package:flutter/material.dart';

class ProfileAccountItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.location_on, color: Color(0xffe23e57),),
                title: Text('Location',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff303841),
                  ),
                ),
              ),

              Divider(height: 4.0, color: Colors.black87,),

              ListTile(
                leading: Icon(Icons.track_changes, color: Color(0xffe23e57),),
                title: Text('Change Password',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff303841),),),
              ),

              Divider(height: 4.0 ,color: Colors.black87,),

              ListTile(
                leading: Icon(Icons.local_shipping,color: Color(0xffe23e57),),
                title: Text('Shipping',
                  style: TextStyle(
                    color: Color(0xff303841),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Divider(height:4.0 , color: Colors.black87,),

              ListTile(
                leading: Icon(Icons.payment,color: Color(0xffe23e57),),
                title: Text('Payment',
                  style: TextStyle(
                    color: Color(0xff303841),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
