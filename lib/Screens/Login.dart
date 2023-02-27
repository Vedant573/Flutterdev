
import 'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../Constants.dart' as constant;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'mainscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email, password;
  int myvar = 1;

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Image.network(
                  'https://t4.ftcdn.net/jpg/00/31/33/13/240_F_31331324_bqXgqwmlnnXaOeXwFv8CrO6oMHpAKPum.jpg')),
          textfield(
            text: 'Email',
            isPassword: false,
            onChanged: (value) {
              email = value;
            },
          ),
          textfield(
            text: 'Password',
            isPassword: true,
            onChanged: (value) {
              password = value;
            },
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
              width: 180,
              color: constant.mailColor,
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side:
                              BorderSide(width: 2, color: constant.mailColor))),
                  onPressed: () async {
                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);

                      if (newUser.user != null && myvar != 0) {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => MainScreen()));

                      }
                    } catch (e) {
                      debugPrint('$e');
                    }
                  },
                  child: Text(
                    'Login',
                    style:
                        TextStyle(fontSize: 40.0, color: constant.textPrimary),
                  )),
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}


