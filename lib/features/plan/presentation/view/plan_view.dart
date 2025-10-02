import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlanView extends StatelessWidget {
  const PlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PlanBodyView(),
      ),
    );
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
          colors: [Color(0xFFEAE9FF), Color(0xFFF6F6FF)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Close button
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.black87),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          const SizedBox(height: 16),

          // Title
          const Text(
            "Upgrade Plan",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 20),

          // Illustration
          SizedBox(
            height: 150,
            child: SvgPicture.asset(
              "assets/objects/Rocket Boy 1.svg", // Replace with your illustration
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 20),

          // Subtitle
          const Text(
            "Seamless Anime\nExperience, Ad-Free.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "Enjoy unlimited anime streaming without\ninterruptions.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 30),

          // Plan Options
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _planOption(
                  title: "Monthly",
                  price: "\$5 USD /Month",
                  subtitle: "Include Family Sharing",
                  selected: isMonthly,
                  onTap: () {
                    setState(() {
                      isMonthly = true;
                    });
                  },
                ),
                const SizedBox(height: 15),
                _planOption(
                  title: "Annually",
                  price: "\$50 USD /Year",
                  subtitle: "Include Family Sharing",
                  selected: !isMonthly,
                  onTap: () {
                    setState(() {
                      isMonthly = false;
                    });
                  },
                ),
              ],
            ),
          ),

          const Spacer(),

          // Continue Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.lightText,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: CustomTextWidget(text: "Continue", color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _planOption({
    required String title,
    required String price,
    required String subtitle,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF2E236C) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected ? Colors.transparent : Colors.grey.shade300,
          ),
        ),
        child: Row(
          children: [
            Image.asset("assets/objects/Files & Folders 3 1.png"),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: selected ? Colors.white : Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14,
                      color: selected ? Colors.white : Colors.black87,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: selected ? Colors.white70 : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              selected ? Icons.check_circle : Icons.circle_outlined,
              color: selected ? Colors.white : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
