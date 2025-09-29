import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/characters/char_cubit.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/characters/char_state.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/character_card.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/loading_anime_widget.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/error_anime_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersListSection extends StatelessWidget {
  const CharactersListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharCubit, CharState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: SizedBox(
            height: 220,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              switchInCurve: Curves.easeInOut,
              switchOutCurve: Curves.easeInOut,
              transitionBuilder: (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
              child: _buildChild(state),
            ),
          ),
        );
      },
    );
  }

  Widget _buildChild(CharState state) {
    if (state is CharLoading) {
      return const Center(
        key: ValueKey("loading"),
        child: AnimatedLoading(),
      );
    } else if (state is CharLoaded) {
      if (state.characters.isEmpty) {
        return _buildEmptyState();
      }
      return ListView.builder(
        key: const ValueKey("loaded"),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: state.characters.length,
        itemBuilder: (context, index) {
          return CharacterCard(character: state.characters[index]);
        },
      );
    } else if (state is CharError) {
      return Center(
        key: const ValueKey("error"),
        child: AnimatedError(message: state.message),
      );
    } else {
      return const Center(
        key: ValueKey("initial"),
        child: Text("Fetch some characters ✨"),
      );
    }
  }

  Widget _buildEmptyState() {
    return Center(
      key: const ValueKey("empty"),
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
