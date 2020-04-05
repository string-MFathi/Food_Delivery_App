import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/home_page.dart';
import 'package:fooddeliveryapp/screens/order_page.dart';
import 'package:fooddeliveryapp/screens/favorite_page.dart';
import 'package:fooddeliveryapp/screens/profile_page.dart';


class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  int currentIndex=0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  Order orderPage;
  FavoritePage favPage;
  ProfilePage profPage;


  @override
  void initState() {

    homePage = HomePage();
    orderPage =   Order();
    favPage = FavoritePage();
    profPage = ProfilePage();


    pages = [homePage, orderPage, favPage, profPage , ];

    currentPage = homePage;

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
