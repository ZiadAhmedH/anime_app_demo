import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PlanHeroSection extends StatelessWidget {
  const PlanHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(
            "assets/objects/Rocket Boy 1.png",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 4),

        const CustomTextWidget.title24(
          "Seamless Anime\nExperience, Ad-Free.",
          textAlign: TextAlign.center,
          color: AppColors.darkText,
        ),
        const SizedBox(height: 4),
        const CustomTextWidget.body(
          "Enjoy unlimited anime streaming without\ninterruptions.",
          textAlign: TextAlign.center,
          color: AppColors.greyText,
        ),
        const SizedBox(height: 45),
      ],
    );
  }
}
