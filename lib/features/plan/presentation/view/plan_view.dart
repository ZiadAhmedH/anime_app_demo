import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/features/plan/presentation/view/sections/plan_background_section.dart';
import 'package:anime_app_demo/features/plan/presentation/view/sections/plan_continue_section.dart';
import 'package:anime_app_demo/features/plan/presentation/view/sections/plan_header_section.dart';
import 'package:anime_app_demo/features/plan/presentation/view/sections/plan_hero_section.dart';
import 'package:anime_app_demo/features/plan/presentation/view/sections/plan_options_section.dart';
import 'package:flutter/material.dart';

class PlanView extends StatelessWidget {
  const PlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: PlanBodyView()));
  }
}

class PlanBodyView extends StatefulWidget {
  const PlanBodyView({super.key});

  @override
  State<PlanBodyView> createState() => _PlanBodyViewState();
}

class _PlanBodyViewState extends State<PlanBodyView> {
  bool isMonthly = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.planBackgrondgrad1,
            AppColors.planBackgrondgrad2,
            Color(0xFFF5F5F5),
          ],
        ),
      ),
      child: PlanBackgroundSection(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PlanHeaderSection(),

            const PlanHeroSection(),

            PlanOptionsSection(
              isMonthly: isMonthly,
              onMonthlyTap: () {
                setState(() {
                  isMonthly = true;
                });
              },
              onAnnuallyTap: () {
                setState(() {
                  isMonthly = false;
                });
              },
            ),

            const SizedBox(height: 40),

            PlanContinueSection(
              onPressed: () {
                debugPrint(
                  'Continue with ${isMonthly ? 'Monthly' : 'Annual'} plan',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
