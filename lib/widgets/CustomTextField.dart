import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.iconType, this.hint});

  final IconData iconType;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: TextStyle(color: Colors.grey.shade700),
        decoration: InputDecoration(
          icon: Icon(
            iconType,
            color: Colors.grey,
            size: 20,
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreenAccent),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
