import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:anime_app_demo/core/di.dart';
import 'package:anime_app_demo/features/details/presentation/cubit/anime_details_cubit.dart';
import 'package:anime_app_demo/features/details/presentation/view/body_view/detail_body_view.dart';

class DetailView extends StatelessWidget {
  final int animeId;

  const DetailView({super.key, required this.animeId});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DetailBodyView());
  }
}
