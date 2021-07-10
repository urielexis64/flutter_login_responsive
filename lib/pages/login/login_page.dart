import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_responsive/pages/login/widgets/login_form.dart';
import 'package:login_responsive/pages/login/widgets/welcome.dart';
import 'package:login_responsive/utils/responsive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Container(
              height: responsive.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Welcome(), LoginForm()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
