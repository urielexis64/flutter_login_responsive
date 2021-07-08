import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_responsive/utils/responsive.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return AspectRatio(
      aspectRatio: 16 / 11,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            child: Stack(
              children: [
                Positioned(
                  top: constraints.maxHeight * .7,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: constraints.maxWidth,
                        color: const Color(0xffeeeeee),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                            fontSize: responsive.ip(2.5),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      'assets/pages/login/clouds.svg',
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * .7,
                    )),
                Positioned(
                    top: constraints.maxHeight * .285,
                    child: SvgPicture.asset(
                      'assets/pages/login/woman.svg',
                      width: constraints.maxWidth * .35,
                    )),
                Positioned(
                    top: constraints.maxHeight * .31,
                    right: constraints.maxWidth * .05,
                    child: SvgPicture.asset(
                      'assets/pages/login/man.svg',
                      width: constraints.maxWidth * .26,
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
