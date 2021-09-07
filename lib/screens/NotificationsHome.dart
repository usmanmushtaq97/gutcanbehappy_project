import 'package:flutter/material.dart';

class NotificationsHome extends StatelessWidget {
  const NotificationsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(1),
          child: Card(
           child: ListTile(
          
                        title: RichText(
  text: TextSpan(
    text: 'Hello ',
    style: DefaultTextStyle.of(context).style,
    children: const <TextSpan>[
      TextSpan(text: 'Ali', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' Your oder sucessfully placed'),
    ],
  ),
)
              
           ),
          ),
        );
      },
    );
  }
}
