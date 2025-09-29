
import 'package:anime_app_demo/features/home/presentation/cubit/anime/anime_cubit.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/anime/anime_state.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/anime_card.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/error_anime_widget.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/loading_anime_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeListSection extends StatelessWidget {
  const AnimeListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeCubit, AnimeState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: SizedBox(
            height: 320,
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

  Widget _buildChild(AnimeState state) {
    if (state is AnimeLoading) {
      return const Center(
        key: ValueKey("loading"),
        child: AnimatedLoading(),
      );
    } else if (state is AnimeLoaded) {
      return ListView.builder(
        key: const ValueKey("loaded"),
        scrollDirection: Axis.horizontal,
        itemCount: state.animes.length,
        itemBuilder: (context, index) {
          return AnimeCard(anime: state.animes[index]);
        },
      );
    } else if (state is AnimeError) {
      return Center(
        key: const ValueKey("error"),
        child: AnimatedError(message: state.message),
      );
    } else {
      return const Center(
        key: ValueKey("initial"),
        child: Text("Fetch some anime ✨"),
      );
    }
  }
}
