import 'dart:ui';

import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
      padding: EdgeInsets.symmetric(horizontal:8),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 3),
            Row(
              children: <Widget>[
                    Container(
                       padding: EdgeInsets.all(3),
                       height: 90,
                        width:  90,
                        child: Center(
                        child: Container(
                         height: 90,
                         width: 90,
                           decoration: BoxDecoration(
                        color: Colors.red[100],
                            borderRadius: BorderRadius.circular(20.0),
                     image: DecorationImage(
                       fit: BoxFit.scaleDown,
                    image: NetworkImage("https://i2.wp.com/gutcanbehappy.com/wp-content/uploads/2021/02/31.png?fit=1080%2C1080&ssl=1") ),
              ),
                ),
              ),      
        ),
        SizedBox(width: 12),
        Expanded(child:  Row(
          children: [
            Column(
              children: <Widget>[
                            Container(
                  width: 100,
                  child: Text("Be You Diet: 10 Week Program",style: TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(height: 8),
                  Row(            
                    children: <Widget>[
                   Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon( Icons.add, color:Colors.white, size: 15.0,
                    
                    ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    ),
                       Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Icon( Icons.add, color:Colors.white, size: 15.0,
                
                ),
                ),
             
             Text("\$545")
                    ],
                  ),
                  
                
                  
                  
                     
                      

              ],
            ),
          ],
        ),)
       
              ],
            )
        ,
     
         
          ],
        ),
      ),
      
      ),
      
     
    );
  }











  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
     onPressed: () => Navigator.of(context).pop(),
  ),
       centerTitle: true,
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "3 items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}