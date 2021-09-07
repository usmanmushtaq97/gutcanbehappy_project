import 'package:flutter/material.dart';
import 'package:gutcanbehappy_project/loginscreens/login.dart';


class RegistartionPg extends StatefulWidget {
  const RegistartionPg({Key? key}) : super(key: key);
  @override
  _RegistartionPgState createState() => _RegistartionPgState();
}

class _RegistartionPgState extends State<RegistartionPg> {
  List<String> _docter = ['doctor1', 'doctor2', 'doctor3', 'doctor4'];
  Object? _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
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
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                  _textInput(hint: "Full Name", icon: Icons.person),
                  _textInput(hint: "Email", icon: Icons.email),
                    _textInput(hint: "Mobile", icon: Icons.phone),
                  _textInput(hint: "Password", icon: Icons.vpn_key),
               Container(
                  margin: EdgeInsets.only(top: 12, left: 27, right: 27),
                 child:    DropdownButton(
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 18),
            hint: Text('Please choose a Refer Dr.'), // Not necessary for Option 1
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down),
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue;
              });
            },
            items: _docter.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),),
                    
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  LoginButton(),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an Account?"),
                       TextButton(onPressed:(){ Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginPage()));}, child:const Text('Login', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),) ,),
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
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => RegistartionPg()));
        },
        child: const Text('SignUp'),
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
