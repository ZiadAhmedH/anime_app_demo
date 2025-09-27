import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AnimatedLoading extends StatefulWidget {
  const AnimatedLoading({super.key});

  @override
  State<AnimatedLoading> createState() => _AnimatedLoadingState();
}

class _AnimatedLoadingState extends State<AnimatedLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    // 👇 تحريك لأعلى وأسفل
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.2), // لأعلى شوية
      end: const Offset(0, 0.2),    // لأسفل شوية
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // عدد الكروت الوهمية
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColors.purple.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: SlideTransition(
                position: _slideAnimation,
                child: Icon(
                  Icons.auto_awesome,
                  size: 48,
                  color: AppColors.lightText,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
