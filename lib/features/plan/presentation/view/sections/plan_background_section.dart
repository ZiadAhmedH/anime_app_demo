import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlanBackgroundSection extends StatelessWidget {
  final Widget child;

  const PlanBackgroundSection({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Decorative star
        Positioned(
          top: 100,
          left: 280,
          child: SvgPicture.asset(
            "assets/objects/Star 1.svg",
            width: 288,
            height: 288,
          ),
        ),
         Positioned(
          top: -150,
          left: -150,
          child: SvgPicture.asset(
            "assets/objects/Star 2.svg",
            width: 388,
            height: 388,
          ),
        ),




        child,
      ],
    );
  }
}
