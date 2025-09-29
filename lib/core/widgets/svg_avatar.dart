import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgCircleAvatar extends StatelessWidget {
  final String assetName;
  final double radius;
  final Color backgroundColor;

  const SvgCircleAvatar({
    super.key,
    required this.assetName,
    this.radius = 50,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: ClipOval(
        child: Image.asset(
          assetName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
