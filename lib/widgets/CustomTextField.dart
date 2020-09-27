import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({this.iconType, this.hint, this.textInput, this.visibility});

  final IconData iconType;
  final String hint;
  final Function textInput;
  final bool visibility;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        obscureText: widget.visibility,
        style: TextStyle(color: Colors.grey.shade700),
        decoration: InputDecoration(
          /*
          suffixIcon: FlatButton(
              onPressed: () {
                setState(() {
                  !widget.visibility;
                });
              },
              child: Icon(Icons.remove_red_eye,
                  color: widget.visibility ? Colors.black12 : Colors.black54)),

           */
          icon: Icon(
            widget.iconType,
            color: Colors.grey,
            size: 20,
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(color: Colors.grey),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreenAccent),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
        ),
        onChanged: widget.textInput,
      ),
    );
  }
}
