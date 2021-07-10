import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputTextLogin extends StatelessWidget {
  final String iconPath, placeholder;

  const InputTextLogin({
    Key key,
    @required this.iconPath,
    @required this.placeholder,
  })  : assert(iconPath != null && placeholder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      prefix: SizedBox(
        width: 40,
        height: 30,
        child: SvgPicture.asset(iconPath, color: const Color(0xffcccccc)),
      ),
      placeholder: placeholder,
      style: const TextStyle(fontFamily: 'sans'),
      placeholderStyle:
          const TextStyle(fontFamily: 'sans', color: Color(0xffcccccc)),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xffcccccc)))),
    );
  }
}
