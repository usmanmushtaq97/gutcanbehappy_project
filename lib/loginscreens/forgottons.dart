import 'package:flutter/material.dart';

class Forgotten extends StatelessWidget {
  const Forgotten({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Password"),
        leading:Icon(Icons.arrow_back) ,
      ),
    );
  }
}
