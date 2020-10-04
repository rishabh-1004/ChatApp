import 'package:chat_app/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/CustomButton.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animate;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        duration: Duration(seconds: 1), vsync: this, upperBound: 1);
    animationController.forward();

    animate =
        CurvedAnimation(parent: animationController, curve: Curves.bounceIn);
    animationController.addListener(() {
      setState(() {});
    });
  }

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
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo.png'),
                  height: animationController.value * 100,
                  width: 70,
                ),
              ),
              TypewriterAnimatedTextKit(
                text: ["Chat App"],
                textStyle: TextStyle(
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
              Navigator.pushNamed(context, RegisterScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
