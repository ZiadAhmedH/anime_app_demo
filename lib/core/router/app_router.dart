import 'package:anime_app_demo/core/di.dart' as di;
import 'package:anime_app_demo/features/details/presentation/cubit/anime_details_cubit.dart';
import 'package:anime_app_demo/features/details/presentation/view/detail_view.dart';
import 'package:anime_app_demo/features/home/presentation/view/home_view.dart';
import 'package:anime_app_demo/features/plan/presentation/view/plan_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      // Home Route
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeView(),
      ),

      // Details Route with anime ID parameter
      GoRoute(
        path: '/details/:animeId',
        name: 'details',
        builder: (context, state) {
          final animeId =
              int.tryParse(state.pathParameters['animeId'] ?? '1') ?? 1;
          return BlocProvider<AnimeDetailsCubit>(
            create: (context) =>
                di.sl<AnimeDetailsCubit>()..loadAnimeDetails(animeId),
            child: DetailView(animeId: animeId),
          );
        },
      ),

      // Plan Route
      GoRoute(
        path: '/plan',
        name: 'plan',
        builder: (context, state) => const PlanView(),
      ),
    ],

    // Error page configuration
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Page not found: ${state.uri}',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    ),

    // Navigation debugging
    debugLogDiagnostics: true,
  );

  static GoRouter get router => _router;
}
