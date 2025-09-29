import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/svg_avatar.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height:143 ,
      color: Colors.transparent,

      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           
         CircleAvatar(
          radius: 50,
          
          backgroundColor: Colors.grey.shade200,
          backgroundImage: AssetImage(character.imageUrl),
         ),
            
               // Character Details
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              // Character Name
              CustomTextWidget.subtitleSemiBold(
                character.name,
                color: AppColors.darkText,
                textAlign: TextAlign.center,
              ),
          
              const SizedBox(height: 6),
          
              // Anime Name
              CustomTextWidget.subtitleSemiBold(
                character.animeName,
                color: AppColors.greyText,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
