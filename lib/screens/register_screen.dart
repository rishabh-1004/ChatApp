import 'package:flutter/material.dart';
import '../widgets/CustomTextField.dart';
import '../widgets/CustomButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'chat_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const id = 'Register Screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String email;
  String password;
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            width: 100,
            child: Image.asset('images/logo.png'),
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
            },
          ),
          CustomButtom(
            buttonName: 'Register',
            buttonUse: () async {
              var user = await _auth.createUserWithEmailAndPassword(
                  email: email, password: password);
              if (user != null) {
                Navigator.pushNamed(context, ChatScreen.id);
              } else {
                print('error');
              }
            },
          ),
        ],
      ),
    );
  }
}
