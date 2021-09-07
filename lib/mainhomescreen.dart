import 'package:flutter/material.dart';
import 'package:gutcanbehappy_project/news/newsmain_pg.dart';
import 'package:gutcanbehappy_project/screens/carts.dart';
import 'screens/home/homepg.dart';
import 'package:gutcanbehappy_project/screens/notification.dart';
import 'package:gutcanbehappy_project/shops.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreeenMain extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _HomeScreeenMain createState() => _HomeScreeenMain();
}

class _HomeScreeenMain extends State<HomeScreeenMain> {
  var _currentIndex = 0;
   var _widgetOptions = <Widget>[
   HomeScreen(),
   Shops(),
   NewsScreen(),
   CartScreen(),
   Notifcations(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gut can be happy",
      debugShowCheckedModeBanner: false,
            home: Scaffold(
           bottomNavigationBar: SalomonBottomBar(
           currentIndex: _currentIndex,
           onTap:(index){
              setState(() {
            _currentIndex = index;
          });     
           } ,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.shop),
              title: Text("Shop"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.nfc),
              title: Text("News"),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Carts"),
              selectedColor: Colors.green,
            ),
            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notifications"),
              selectedColor: Colors.teal,
            ),
          ],
         
        ),
        body: _widgetOptions.elementAt(_currentIndex),
      ),
    );
  }
}