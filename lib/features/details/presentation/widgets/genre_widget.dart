// Helper method for genre tags
  import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/text_widget.dart';

Widget buildGenreTag(String genre) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightContentBackground,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: CustomTextWidget.subtitle(
        genre,
        color: AppColors.white,
      ),
    );
  }

