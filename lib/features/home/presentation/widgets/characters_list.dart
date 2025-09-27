import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:anime_app_demo/features/home/domain/entities/character.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/character_card.dart';
import 'package:flutter/material.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
   

    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 14),
        child: characters.isEmpty
            ? _buildEmptyState()
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  return CharacterCard(character: characters[index]);
                },
              ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_outline, size: 64, color: Colors.grey[400]),
          const SizedBox(height: 16),
          CustomTextWidget.body(
            "No characters available",
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }
}
