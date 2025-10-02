import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anime_app_demo/core/di.dart';
import 'package:anime_app_demo/features/details/presentation/cubit/anime_details_cubit.dart';

import 'body_view/detail_body_view.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<AnimeDetailsCubit>()..loadAnimeDetails(1),
        child: const DetailBodyView(),
      ),
    );
  }
}
