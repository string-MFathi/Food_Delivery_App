import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/food_category_method.dart';
import 'package:fooddeliveryapp/data/food_category_data.dart';



class FoodCategory extends StatefulWidget {
  @override
  _FoodCategoryState createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {

  final List<Category> _categories = categoryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55.0),
      ),
      height: 80.0 ,
      margin: EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (BuildContext context , int index){
          return FoodCategoryMethod(
            categoryName: _categories[index].categoryName,
            numberItem: _categories[index].numberItem,
            imagePath: _categories[index].imagePath,
          );
        },
      ),
    );
  }
}



