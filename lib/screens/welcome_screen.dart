import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/CustomButton.dart';
import '../screens/login_screen.dart';

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
          CustomButtom(
            buttonName: 'Login',
            buttonUse: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomButtom(
            buttonName: 'Register',
            buttonUse: () {
              print("Registerd");
            },
          ),
        ],
      ),
    );
  }
}
