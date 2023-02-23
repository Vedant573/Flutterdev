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
          Expanded(
            flex: 1,
              child: textfield(text: 'Email',isPassword: false,)),
          Expanded(child: textfield(text: 'Password',isPassword: true,)),
          TextButton(onPressed: (){}, child: Text('Login')),
          Expanded(child: Container())

       ],
      ),
    );
  }
}


