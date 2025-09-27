
import 'package:anime_app_demo/features/home/presentation/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 24, bottom: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CategoryWidget(label: "All", isSelected: true),
            CategoryWidget(label: "Popular", isSelected: false),
            CategoryWidget(label: "Trending", isSelected: false),
            CategoryWidget(label: "New Releases", isSelected: false),
            CategoryWidget(label: "Top Rated", isSelected: false),
          ],
        ),
      ),
    );
  }
}