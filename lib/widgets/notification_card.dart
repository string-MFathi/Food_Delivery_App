import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0,),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 4.0,
        child: Column(
          children: <Widget>[
           Container(
               height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: AssetImage('images/one.jpg'),
              fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                       color: Colors.white,
                        width: 2.0,
                      ),
                      color: Color(0xffe23e57),
                      borderRadius: BorderRadius.circular(50.0),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('%',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text('25',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text('OFF',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
           Container(
             alignment: Alignment.centerLeft,
             height: 100.0,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20.0),
             ),
             child: Padding(
               padding: EdgeInsets.all(10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                       Text('25% OFF',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                       ),
                       SizedBox(height: 10.0,),
                       Text('This Discount is Valid on Pizza you can check Now',
                         style: TextStyle(
                           fontSize: 15.0,
                         ),
                       ),
                   SizedBox(height: 5.0,),
                       Text('By : McDonalz',
                         style: TextStyle(
                           color: Color(0xffe23e57),
                           fontSize: 15.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ],
                   ),
             ),
           ),
        ],
        ),
      ),
    );
  }
}

