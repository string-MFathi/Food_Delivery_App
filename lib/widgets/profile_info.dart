import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: 180.0,
      child: Column(
        children: <Widget>[
          // top text
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:20.0 , top: 15.0, right: 25.0),
                  child: Container(
                    height: 140.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/mee.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(90.0,),
                    ),
                  ),
                ),
                 Container(
                   height: 140.0,
                   width: 170.0,
                   child: Padding(
                     padding: EdgeInsets.only(left: 10.0, top: 15.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text('Mohamed Fathi',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text('+20-01*********',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          SizedBox(height: 25.0,),
                        Container(
                          child: Center(
                            child: Text('Edit',
                                style: TextStyle(
                                color: Color(0xffeeeeee),
                                ),
                            ),
                          ),
                          height: 30.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xffe23e57),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                        ),
                       ],
                      ),
                   ),
                  ),

                ],
    ),
                ),
    ],
    ),

    );
  }
}
