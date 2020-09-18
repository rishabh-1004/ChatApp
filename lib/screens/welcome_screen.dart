import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('images/logo.png'),
                height: 70,
                width: 70,
              ),
              Text(
                "Chat App",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Material(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blueAccent,
                child: Center(
                    child: MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                    print("Button Pressed");
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Material(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.blueAccent,
                child: Center(
                    child: MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  onPressed: () {
                    print("Button Pressed");
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ))),
          ),
        ],
      ),
    );
  }
}
