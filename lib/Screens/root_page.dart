import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:modern_living/Screens/homePage.dart';
import 'package:modern_living/Screens/profile.dart';
import 'package:modern_living/Screens/resturants.dart';
import 'package:modern_living/Screens/shopping_cart.dart';
import 'package:modern_living/Widgets/custom_appBar.dart';

import '../const.dart';
import 'Admin/admin_store_list.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  List<Widget> _screens = [
    HomePage(),
    Restaurants(),
    ShoppingCart(),
    Profile(),
  ];



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
       appBar: _currentIndex == 0 ||_currentIndex ==  1 ?  PreferredSize(
        preferredSize: size,
        child: SafeArea(
          child: CustomAppBar(
            openDrawer: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
      ) : null,
      body: _screens[_currentIndex],
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => AdminPanel()));
                },
                child: Text('ADMIN'))
          ],
        ),
      ),
      bottomNavigationBar: Card(
        elevation: 10,
        shadowColor: faintBlue,
        child: BottomNavigationBar(
          fixedColor: green,
          currentIndex: _currentIndex,
          backgroundColor: whiteGreish,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(
            color: green,
          ),
          selectedFontSize: 14,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), title: Text('Fav')),
            BottomNavigationBarItem(
                icon: Badge(
                  position: BadgePosition.topEnd(top: -15),
                    badgeColor: green,
                    badgeContent: Text(
                      orders.length.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          color: whiteGreish,
                          fontWeight: FontWeight.bold,
                          fontFamily: poppins),
                    ),
                    child: Icon(Icons.shopping_cart_outlined)),
                title: Text('Cart')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
