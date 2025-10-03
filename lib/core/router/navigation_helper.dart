import 'package:anime_app_demo/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationHelper {
  // Navigate to home
  static void goToHome(BuildContext context) {
    context.go(AppRoutes.home);
  }

  static void goToDetails(BuildContext context, int animeId) {
    context.go(AppRoutes.detailsWithId(animeId));
  }

  static void goToPlan(BuildContext context) {
    context.go(AppRoutes.plan);
  }

  static void pushToDetails(BuildContext context, int animeId) {
    context.push(AppRoutes.detailsWithId(animeId));
  }

  static void pushToPlan(BuildContext context) {
    context.push(AppRoutes.plan);
  }

  static void goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    }
  }

  // Replace current route
  static void replaceWithHome(BuildContext context) {
    context.pushReplacement(AppRoutes.home);
  }
}


