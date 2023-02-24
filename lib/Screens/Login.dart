import 'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../Constants.dart' as constant;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Expanded(child: Image.network('https://t4.ftcdn.net/jpg/00/31/33/13/240_F_31331324_bqXgqwmlnnXaOeXwFv8CrO6oMHpAKPum.jpg')),
          textfield(text: 'Email',isPassword: false,),
          textfield(text: 'Password',isPassword: true,),
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
              width: 180,
              color: constant.mailColor,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(
                      width: 2,
                      color: constant.mailColor
                    )
                  )
                ),
                  onPressed: (){}, child: Text('Login',
              style: TextStyle(
                fontSize: 40.0,
                color: constant.textPrimary
              ),)),
            ),
          ),
          Expanded(child: Container())

       ],
      ),
    );
  }
}


