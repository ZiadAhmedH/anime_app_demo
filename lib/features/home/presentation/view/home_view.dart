import 'package:anime_app_demo/core/di.dart';
import 'package:anime_app_demo/features/home/presentation/cubit/anime_cubit.dart';
import 'package:anime_app_demo/features/home/presentation/view/body_view/home_body_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        
        create: (context) => sl<AnimeCubit>()..getPopularAnimes(),
        child: HomeBodyView(),
      ),
    );
  }
}
