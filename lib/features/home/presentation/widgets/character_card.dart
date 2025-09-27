import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Character Image
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.lightPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: character.imageUrl.isNotEmpty
                    ? Image.asset(
                        character.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.person,
                            size: 50,
                            color: AppColors.darkPurple,
                          );
                        },
                      )
                    : const Icon(
                        Icons.person,
                        size: 50,
                        color: AppColors.darkPurple,
                      ),
              ),
            ),
          ),

          // Character Details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Character Name
                  CustomTextWidget.subtitle16(
                    character.name,
                    color: AppColors.darkText,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),

                  const SizedBox(height: 4),

                  // Anime Name
                  CustomTextWidget.small(
                    character.animeName,
                    color: AppColors.darkPurple,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
