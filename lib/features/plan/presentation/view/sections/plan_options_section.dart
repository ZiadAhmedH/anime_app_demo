import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PlanOptionsSection extends StatelessWidget {
  final bool isMonthly;
  final VoidCallback onMonthlyTap;
  final VoidCallback onAnnuallyTap;

  const PlanOptionsSection({
    super.key,
    required this.isMonthly,
    required this.onMonthlyTap,
    required this.onAnnuallyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _planOption(
            title: "Monthly",
            price: "\$5 USD",
            pricePer: "/Month",
            subtitle: "Include Family Sharing",
            selected: isMonthly,
            onTap: onMonthlyTap,
          ),
          const SizedBox(height: 15),
          _planOption(
            title: "Annually",
            price: "\$50 USD",
            pricePer: "/Year",
            subtitle: "Include Family Sharing",
            selected: !isMonthly,
            onTap: onAnnuallyTap,
          ),
        ],
      ),
    );
  }

  Widget _planOption({
    required String title,
    required String price,
    required String pricePer,
    required String subtitle,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(20),
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: selected ? AppColors.darkText : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: selected ? Colors.transparent : Colors.grey.shade300,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/objects/Files & Folders 3 1.png",
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget.subtitlew700(
                    title,
                    color: selected ? Colors.white : Colors.black87,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      CustomTextWidget.subtitlew700(
                        price,
                        color: selected ? Colors.white : Colors.black87,
                      ),
                      CustomTextWidget.subtitlew700(
                        pricePer,
                        color: AppColors.lightpurpleText,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  CustomTextWidget.smallSemiBold(
                    subtitle,
                    color: AppColors.lightpurpleText,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, anim) =>
                      ScaleTransition(scale: anim, child: child),
                  child: Icon(
                    selected ? Icons.check_circle : Icons.circle_outlined,
                    key: ValueKey(selected),
                    size: 24,
                    color: selected ? AppColors.lightText : AppColors.darkText,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
