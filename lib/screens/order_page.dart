import 'package:flutter/material.dart';
import '../widgets/order_card.dart';
import 'package:fooddeliveryapp/widgets/price_info_order.dart';

class Order extends StatefulWidget {

  @override
  _OrderState createState() => _OrderState();
}
class _OrderState extends State<Order> {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
       appBar: AppBar(
         iconTheme: IconThemeData(
           color: Colors.black,
         ),
           centerTitle: true,
           backgroundColor: Color(0xffeeeeee),
           elevation: 0.0,
           title: Text( "Your Food Cart",
             style: TextStyle(
               color: Color(0xff303841),
               fontWeight: FontWeight.bold,
               fontSize: 25.0,
             ),
           ),
       ),
           body: ListView(
             padding: EdgeInsets.symmetric(horizontal: 10.0),
             scrollDirection: Axis.vertical,
             children: <Widget>[
               Column(
                 children: <Widget>[
                   OrderCard(),
                   OrderCard(),
                   OrderCard(),
                   OrderCard(),
                   OrderCard(),
                   OrderCard(),
                   OrderCard(),
                   OrderCard(),
                 ],
               ),
             ],
           ),
      bottomNavigationBar: buildContainer(),
    );
  }
}

