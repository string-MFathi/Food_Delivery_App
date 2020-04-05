import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/main_home_page.dart';
import '../widgets/food_category.dart';
import '../widgets/food_card_item.dart';
import 'package:fooddeliveryapp/data/food_card_data.dart';

//Data

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<FoodData> _foods = foodsData;

  final textStyle= TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[

          //top bar info
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 2, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('What would',
                        style: textStyle,
                      ),
                      Text('you like to eat?',
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5, bottom: 45.0),
                  child: Icon(Icons.notifications_none,
                    color: Color(0xffe23e57),
                    size: 35,
                  ),
                ),
              ],
            ),
          ),

          //food card
          FoodCategory(),

          //search info
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Material(
              color: Colors.white,
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  hintText: 'Search Foods',
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff303841),
                    letterSpacing: 2.0,
                  ),
                  suffixIcon: Material(
                    color: Colors.white,
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: Icon(Icons.search,
                      color: Color(0xffe23e57),
                      size: 30.0,

                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          //bought info
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Frequently Bought Foods',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color(0xff303841),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Color(0xffe23e57),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
             children: _foods.map(_buildFoodItem).toList(),
          ),
          MainHomePage(),
        ],
      ),
    );
  }

  Widget _buildFoodItem(FoodData foodData){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: FoodCardItem(
        id: foodData.id,
        name: foodData.name,
        imagePath: foodData.imagePath,
        category: foodData.category,
        discount: foodData.discount,
        price: foodData.price,
        ratings: foodData.ratings,
      ),
    );
  }
}

