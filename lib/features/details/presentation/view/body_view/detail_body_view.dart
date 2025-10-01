import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailBodyView extends StatelessWidget {
  const DetailBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: screenHeight * 0.7,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                        child: SizedBox.expand(
                          child: Image.asset(
                            "assets/details/inner-poster.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Container(
                        height: screenHeight * 0.35,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment.topRight,
                            radius: 1.2, // spread
                            colors: [
                              AppColors.fadeColor,
                              AppColors.contentBackground,
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 80),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.lightContentBackground,
                                    borderRadius: BorderRadius.circular(17),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 6, // softness
                                        offset: const Offset(2, 3),
                                      ),
                                    ],
                                  ),
                                  child: CustomTextWidget.subtitle(
                                    "Adventure",
                                    color: AppColors.white,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.lightContentBackground,
                                    borderRadius: BorderRadius.circular(17),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 6,
                                        offset: const Offset(2, 3),
                                      ),
                                    ],
                                  ),
                                  child: CustomTextWidget.subtitle(
                                    "Fantasy",
                                    color: AppColors.white,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.lightContentBackground,
                                    borderRadius: BorderRadius.circular(17),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 6,
                                        offset: const Offset(2, 3),
                                      ),
                                    ],
                                  ),
                                  child: CustomTextWidget.subtitle(
                                    "Action",
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),

                            Divider(
                              color: Colors.white.withOpacity(0.3),
                              thickness: 1,
                              height: 30,
                              indent: 40,
                              endIndent: 40,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightContentBackground
                                            .withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 1,
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/objects/Star 1.svg",
                                        height: 24,
                                        width: 24,
                                        colorFilter: const ColorFilter.mode(
                                          Colors.amber,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    CustomTextWidget.subtitleBold(
                                      "8.5",
                                      color: AppColors.white,
                                    ),
                                    const SizedBox(height: 4),
                                    CustomTextWidget.small(
                                      "Rating",
                                      color: AppColors.white,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightContentBackground
                                            .withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 1,
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/objects/Files & Folders 3 1.svg",
                                        height: 24,
                                        width: 24,
                                        colorFilter: const ColorFilter.mode(
                                          Colors.blueAccent,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    CustomTextWidget.subtitleBold(
                                      "24",
                                      color: AppColors.white,
                                    ),
                                    const SizedBox(height: 4),
                                    CustomTextWidget.small(
                                      "Episodes",
                                      color: AppColors.white,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: AppColors.lightContentBackground
                                            .withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.2),
                                          width: 1,
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/objects/global.png",
                                        height: 24,
                                        width: 24,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    CustomTextWidget.subtitleBold(
                                      "2023",
                                      color: AppColors.white,
                                    ),
                                    const SizedBox(height: 4),
                                    CustomTextWidget.small(
                                      "Year",
                                      color: AppColors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Divider(
                              color: Colors.white.withOpacity(0.3),
                              thickness: 1,
                              height: 30,
                              indent: 40,
                              endIndent: 40,
                            ),

                            CustomTextWidget.body(
                              "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                              color: AppColors.white,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Positioned(
                    top: screenHeight * 0.7 - 85,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Shadow layer
                        Transform.translate(
                          offset: const Offset(2, 2),
                          child: SvgPicture.asset(
                            "assets/details/anime-logo.svg",
                            height: 150,
                            colorFilter: const ColorFilter.mode(
                              Colors.black54,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        // Main logo
                        SvgPicture.asset(
                          "assets/details/anime-logo.svg",
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
