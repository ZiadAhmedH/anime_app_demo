import 'package:anime_app_demo/core/router/navigation_helper.dart';
import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:anime_app_demo/features/home/domain/entities/anime.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  final Anime anime;

  const AnimeCard({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       focusColor: Colors.transparent,
       highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        
      onTap: () {
         NavigationHelper.pushToDetails(context, 1);
      },
      child: SizedBox(
        width: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// البوستر
            SizedBox(
              height: 260,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.lightPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(anime.poster, fit: BoxFit.fill),
                    ),
                    Positioned(
                      top: 8,
                      right: 22,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: AppColors.lightText,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              anime.rating.toStringAsFixed(1),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      
            const SizedBox(height: 8),
      
            CustomTextWidget.subtitleBold(anime.title),
            const SizedBox(height: 4),
            CustomTextWidget.small(anime.genre, color: AppColors.greyText),
          ],
        ),
      ),
    );
  }
}
