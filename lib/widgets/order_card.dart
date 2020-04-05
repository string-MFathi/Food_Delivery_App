import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.white,
      elevation: 2.0,
     child: Padding(
       padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Container(
             height:75.0 ,
             width:47.0 ,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15.0),
               border: Border.all(width: 2.0, color: Color(0xff303841),),
             ),
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){},
                   child: Icon(Icons.keyboard_arrow_up , color: Color(0xff303841),),
                 ),
                 Text('0', style: TextStyle(
                     fontSize: 20.0,
                     color: Color(0xff303841),
                 ),),
                 InkWell(
                   onTap: (){},
                   child: Icon(Icons.keyboard_arrow_down, color: Color(0xff303841),

                   ),
                 ),
               ],
             ),
           ),
           SizedBox(width: 20.0,),
           Container(
             height: 70.0 ,
             width:70.0 ,
             decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage('images/two.jpg'),
                 fit: BoxFit.cover,
               ),

             ),
           ),
           SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text( 'Burger', style: TextStyle(color: Color(0xff303841),fontWeight: FontWeight.bold, fontSize: 23.0),),
                 SizedBox(height: 5.0,),
                 Text('4.0', style: TextStyle(fontSize: 18.0,  color: Color(0xffe23e57),),),
                 SizedBox(height: 5.0,),
                 Container(
                   height: 25.0,
                   width: 120.0,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: <Widget>[
                     Container(
                       margin: EdgeInsets.only( right: 3.0),
                       child: Row(
                         children: <Widget>[
                         Text('Egg', style: TextStyle(color: Colors.black38 ,fontWeight:FontWeight.bold, fontSize: 15.0),),
                         SizedBox(width: 2.0,),
                         Text('x', style: TextStyle(fontSize: 16.0 ,  color: Color(0xffe23e57),),),
                         SizedBox(width: 7.0,),
                         ],
                       ),
                     ),
                      Container(
                        margin: EdgeInsets.only(right: 3.0),
                        child: Row(
                          children: <Widget>[
                            Text('Tomm', style: TextStyle( color: Colors.black38 , fontWeight:FontWeight.bold , fontSize: 15.0),),
                            SizedBox(width: 2.0,),
                            Text('x', style: TextStyle(fontSize: 16.0 ,  color: Color(0xffe23e57),),),
                          ],
                        ),
                      ),
                       Container(
                         margin: EdgeInsets.only(right: 3.0),
                         child: Row(
                           children: <Widget>[
                             Text('chessy', style: TextStyle( color: Colors.black38 , fontWeight:FontWeight.bold , fontSize: 15.0),),
                             SizedBox(width: 2.0,),
                             Text('x', style: TextStyle(fontSize: 16.0 ,  color: Color(0xffe23e57),),),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
         Spacer(),
         GestureDetector( child: Icon(Icons.cancel, color: Color(0xff303841),),
         ),
       ],
     ),
       ),
    );
  }
}
