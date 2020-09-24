import 'package:flutter/material.dart';
import '../widgets/CustomTextField.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'Login Screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          ),
          CustomTextField(
            iconType: Icons.lock_open,
            hint: 'Password',
          )
        ],
      ),
    );
  }
}
