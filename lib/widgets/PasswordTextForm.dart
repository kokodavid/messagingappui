import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordTextForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  TextField(
        decoration: InputDecoration(
            labelText: 'PASSWORD',
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.grey
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green)
            )
        ),
      ),
    );
  }
}
