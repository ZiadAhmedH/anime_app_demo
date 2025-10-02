   // Helper method for statistics columns
  import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildStatColumn({
    required String icon,
    required Color iconColor,
    required String value,
    required String label,
    required bool isSvg,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.lightContentBackground.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: isSvg 
              ? SvgPicture.asset(
                  icon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    iconColor,
                    BlendMode.srcIn,
                  ),
                )
              : Image.asset(
                  icon,
                  height: 24,
                  width: 24,
                ),
        ),
        const SizedBox(height: 8),
        CustomTextWidget.subtitleBold(
          value,
          color: AppColors.white,
        ),
        const SizedBox(height: 4),
        CustomTextWidget.small(
          label,
          color: AppColors.white,
        ),
      ],
    );
  }
