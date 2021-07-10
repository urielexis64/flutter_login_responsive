import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_responsive/utils/app_colors.dart';

class CircleButton extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final String iconPath;

  const CircleButton(
      {Key key, this.size = 50, this.backgroundColor, @required this.iconPath})
      : assert(iconPath != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(12),
      child: SvgPicture.asset(
        iconPath,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primary, shape: BoxShape.circle),
    );
  }
}
