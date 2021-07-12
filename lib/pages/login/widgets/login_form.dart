import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_responsive/pages/login/widgets/input_text_login.dart';
import 'package:login_responsive/utils/responsive.dart';
import 'package:login_responsive/widgets/circle_button.dart';
import 'package:login_responsive/widgets/rounded_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SafeArea(
      top: false,
      child: SizedBox(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            InputTextLogin(
              iconPath: 'assets/pages/login/icons/email.svg',
              placeholder: 'Email Address',
            ),
            SizedBox(
              height: responsive.ip(2),
            ),
            InputTextLogin(
              iconPath: 'assets/pages/login/icons/key.svg',
              placeholder: 'Password',
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CupertinoButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Forgot password',
                    style: TextStyle(fontFamily: 'sans'),
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              height: responsive.ip(2),
            ),
            RoundedButton(onPressed: () {}, label: 'Sign In'),
            SizedBox(
              height: responsive.ip(3),
            ),
            Text('Or continue with'),
            SizedBox(
              height: responsive.ip(1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleButton(
                  iconPath: 'assets/pages/login/icons/facebook.svg',
                  backgroundColor: Color(0xff448aff),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleButton(
                  iconPath: 'assets/pages/login/icons/google.svg',
                  backgroundColor: Color(0xffff1744),
                )
              ],
            ),
            SizedBox(height: responsive.ip(3)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                CupertinoButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'sans', fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
