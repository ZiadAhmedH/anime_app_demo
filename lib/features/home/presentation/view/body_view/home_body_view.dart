import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:anime_app_demo/features/home/presentation/view/body_view/sections/anime_list_section.dart'
    show AnimeListSection;
import 'package:anime_app_demo/features/home/presentation/view/body_view/sections/category_section.dart';
import 'package:anime_app_demo/features/home/presentation/widgets/characters_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundStar(),
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: HeaderSection()),
            const SliverToBoxAdapter(child: CategorySection()),
            const AnimeListSection(),

            const SliverToBoxAdapter(child: CharacterSectionHeader()),

            const CharactersListSection(),
          ],
        ),
      ],
    );
  }
}

class BackgroundStar extends StatelessWidget {
  const BackgroundStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -102,
      right: -190,
      child: SvgPicture.asset(
        "assets/objects/Star 1.svg",
        width: 432,
        color: const Color(0xFFD3D6FF),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 67),
      child: CustomTextWidget.title24(
        "Where Anime Comes Alive",
        color: AppColors.darkText,
      ),
    );
  }
}

class CharacterSectionHeader extends StatelessWidget {
  const CharacterSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 24, bottom: 24),
      child: CustomTextWidget.title28(
        "Top Characters",
        color: AppColors.darkText,
      ),
    );
  }
}
