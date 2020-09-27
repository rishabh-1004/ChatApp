import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String buttonName;
  final Function buttonUse;

  const CustomButtom({this.buttonName, this.buttonUse});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Material(
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Colors.blueAccent,
          child: Center(
              child: MaterialButton(
            height: 50,
            minWidth: double.infinity,
            onPressed: buttonUse,
            child: Text(
              buttonName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ))),
    );
  }
}
