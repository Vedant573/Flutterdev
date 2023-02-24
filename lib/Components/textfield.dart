import 'package:flutter/material.dart';
import '../Constants.dart' as constant;
class textfield extends StatelessWidget {
  final String text;
  final bool isPassword;

  const textfield({
    super.key, required this.text, required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        style: TextStyle(
          color: constant.mailColor
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                color: constant.mailColor,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: constant.mailColor,
                width: 2,
                style: BorderStyle.solid,
              ),
            )
        ),
      ),
    );
  }
}