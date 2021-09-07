import 'package:flutter/material.dart';
import 'body.dart';
import 'constants.dart';
class Shops extends StatelessWidget {
  const Shops({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(),
    body: Body(),
     
    );
  }
}
AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.blueAccent,
    elevation: 0,
    title: Text("GutCanBeHappy Shop"),
    // leading: IconButton(
    //   icon: Icon(Icons.shop),
    //   onPressed: () {},
    // ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
        IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}
