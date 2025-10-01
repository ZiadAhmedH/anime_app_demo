import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CharacterCardLoading extends StatefulWidget {
  const CharacterCardLoading({super.key});

  @override
  State<CharacterCardLoading> createState() => _CharacterCardLoadingState();
}

class _CharacterCardLoadingState extends State<CharacterCardLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _pulse;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _pulse = Tween<double>(begin: 0.85, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  Widget _buildPlaceholder({required double height, required double width, double radius = 8}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 143,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar
          ScaleTransition(
            scale: _pulse,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.lightText.withOpacity(0.4),
            ),
          ),
          const SizedBox(height: 10),

          // Character Name placeholder
          _buildPlaceholder(height: 14, width: 90),

          const SizedBox(height: 6),

          // Anime Name placeholder
          _buildPlaceholder(height: 12, width: 70),
        ],
      ),
    );
  }
}




class CharacterLoadingList extends StatelessWidget {
  const CharacterLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160, // enough for avatar + text placeholders
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6, // number of loading cards you want
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: CharacterCardLoading(),
          );
        },
      ),
    );
  }
}
