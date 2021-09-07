import 'package:flutter/material.dart';
import 'package:gutcanbehappy_project/loginscreens/registeration.dart';

import '../mainhomescreen.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.redAccent],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100)),
              ),
              child: Center(
                child: Image.asset('assets/icons/logosp.png',
                    height: 100, width: 100, fit: BoxFit.fill),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 70),
              child: Column(
                children: <Widget>[
                  _textInput(hint: "Email", icon: Icons.email),
                  _textInput(hint: "Password", icon: Icons.vpn_key),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(right: 30),
                    margin: EdgeInsets.only(top: 12),
      
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  LoginButton(),
                  Padding(
                    padding: EdgeInsets.only(top: 70),
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Do not have Account?"),
                   TextButton(onPressed:(){ Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegistartionPg()));}, child:const Text('Register', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),) ,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//login button widget
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 120,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(5),
          primary: Colors.white,
          backgroundColor: Colors.red,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreeenMain()));
        },
        child: const Text('Login'),
      ),
    );
  }
}

// TextInput widget
Widget _textInput({controller, hint, icon}) {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 25, right: 25),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
    ),
    padding: EdgeInsets.only(left: 10),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        prefixIcon: Icon(icon),
      ),
    ),
  );
}
