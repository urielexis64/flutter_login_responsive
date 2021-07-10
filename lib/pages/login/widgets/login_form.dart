import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_responsive/pages/login/widgets/input_text_login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Column(
        children: [
          InputTextLogin(
            iconPath: 'assets/pages/login/icons/email.svg',
            placeholder: 'Email Address',
          ),
          SizedBox(
            height: 20,
          ),
          InputTextLogin(
            iconPath: 'assets/pages/login/icons/key.svg',
            placeholder: 'Password',
          ),
          SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
