import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PlanHeaderSection extends StatelessWidget {
  const PlanHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Centered Title
        const CustomTextWidget.title24(
          "Upgrade Plan",
          color: AppColors.darkText,
          textAlign: TextAlign.center,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18,
              child: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.black87,
                  size: 20,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(width: 25),
          ],
        ),
      ],
    );
  }
}
