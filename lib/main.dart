import 'package:anime_app_demo/core/router/app_router.dart';
import 'package:anime_app_demo/features/details/presentation/view/detail_view.dart';
import 'package:anime_app_demo/features/home/presentation/view/home_view.dart';
import 'package:anime_app_demo/features/plan/presentation/view/plan_view.dart';
import 'package:flutter/material.dart';

import 'core/di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Anime App',
      theme: ThemeData(fontFamily: "Raleway"),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
