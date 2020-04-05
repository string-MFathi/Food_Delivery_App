import 'package:flutter/material.dart';

class FoodCategoryMethod extends StatelessWidget {
  FoodCategoryMethod({this.numberItem, this.imagePath, this.categoryName});

  final String categoryName;
  final String imagePath;
  final int numberItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
        child: Row(
          children: <Widget>[
            Image(
             image: AssetImage(imagePath,),
            height: 80.0,
            width: 80.0,
        ),
            SizedBox(
              width: 15.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(categoryName,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text("$numberItem kinds",
                 style: TextStyle(
                   color: Color(0xffe23e57),
                 ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

