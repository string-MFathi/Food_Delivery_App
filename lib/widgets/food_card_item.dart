import 'package:flutter/material.dart';


class FoodCardItem extends StatefulWidget {
  FoodCardItem({this.imagePath,this.id,this.category,this.discount,this.name,this.price,this.ratings,});
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;
  @override
  _FoodCardItemState createState() => _FoodCardItemState();
}

class _FoodCardItemState extends State<FoodCardItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: 400.0,
            child: Image.asset(widget.imagePath ,fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 70.0,
              width: 400.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff303841),
                    Colors.black38,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                         widget.name,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 7.0,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 18,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 18,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 18,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 18,),
                        Icon(Icons.star_half, color: Theme.of(context).primaryColor, size: 18,),
                        SizedBox(height: 5.0,),
                        Text(
                          "(" + widget.ratings.toString()+"Reviews)",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        widget.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffe23e57),
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Text('Min Order',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0
                        ),
                      ),
                    ],
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

