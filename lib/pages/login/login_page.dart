import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_responsive/pages/login/widgets/login_form.dart';
import 'package:login_responsive/pages/login/widgets/welcome.dart';
import 'package:login_responsive/utils/responsive.dart';
import 'package:after_layout/after_layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AfterLayoutMixin {
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.portrait) {
                  return SingleChildScrollView(
                    child: Container(
                      height: responsive.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Welcome(), LoginForm()],
                      ),
                    ),
                  );
                }
                return Row(
                  children: [
                    Expanded(
                        child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: SizedBox(
                                height: responsive.height, child: Welcome()))),
                    SafeArea(
                      child: Expanded(
                          child: SingleChildScrollView(
                              child: Center(child: LoginForm()))),
                    )
                  ],
                );
              },
            )),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    final bool isTablet = MediaQuery.of(context).size.shortestSide >= 600;
    if (!isTablet) {
      // if smartphone
      // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
  }
}
