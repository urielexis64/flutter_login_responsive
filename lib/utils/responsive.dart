import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart' show required;
import 'dart:math' as math;

class Responsive {
  final double width, height, inch;

  Responsive(
      {@required this.width, @required this.height, @required this.inch});

  factory Responsive.of(BuildContext context) {
    final data = MediaQuery.of(context);
    final size = data.size;
    final inch = math.sqrt(math.pow(size.width, 2) + math.pow(size.height, 2));
    return Responsive(width: size.width, height: size.height, inch: inch);
  }

  double wp(double percent) => width * percent / 100;

  double hp(double percent) => height * percent / 100;

  double ip(double percent) => inch * percent / 100;
}
