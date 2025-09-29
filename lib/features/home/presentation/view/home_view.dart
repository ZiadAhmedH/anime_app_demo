import 'package:anime_app_demo/core/di.dart';
import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/anime_bottom_nav_bar.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/anime/anime_cubit.dart';
import 'package:anime_app_demo/features/home/presentation/view/body_view/home_body_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/characters/char_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.purple, Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<AnimeCubit>()..fetchPopularAnimes(),
            ),
            BlocProvider(
              create: (context) => sl<CharCubit>()..fetchTopCharacters(),
            ),
          ],
          child: HomeBodyView(),
        ),

        bottomNavigationBar: const AnimeBottomNavBar(),
      ),
    );
  }
}
