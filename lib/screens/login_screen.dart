import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/CustomTextField.dart';
import '../widgets/CustomButton.dart';
import 'chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'Login Screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;

  FirebaseAuth _user = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: 'logo',
            child: Container(
              height: 200,
              width: 100,
              child: Image.asset('images/logo.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
              iconType: Icons.email,
              hint: 'Email',
              visibility: false,
              textInput: (value) {
                setState(() {
                  email = value;
                });
              }),
          CustomTextField(
              iconType: Icons.lock_open,
              hint: 'Password',
              visibility: true,
              textInput: (value) {
                setState(() {
                  password = value;
                });
              }),
          CustomButtom(
            buttonName: 'Login',
            buttonUse: () {
              Navigator.pushNamed(context, ChatScreen.id);
              print('Login Button pressed');
            },
          ),
        ],
      ),
    );
  }
}
