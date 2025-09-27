import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String label;
  final bool isSelected;

  const CategoryWidget({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.lightText : Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: CustomTextWidget.subtitleBold(
          label,
          color: isSelected ? Colors.white : AppColors.lightText,
        ),
      ),
    );
  }
}
