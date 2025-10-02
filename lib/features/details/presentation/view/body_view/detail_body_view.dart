import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:anime_app_demo/core/widgets/text_widget.dart';
import 'package:anime_app_demo/features/details/presentation/widgets/genre_widget.dart'
    show buildGenreTag;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailBodyView extends StatelessWidget {
  const DetailBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.contentBackground,
      body: Stack(
        children: [
          // Your scrollable content
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        // Poster
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

                        // Content
                        Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            minHeight: screenHeight * 0.35,
                          ),
                          decoration: const BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment.topRight,
                              radius: 1.2,
                              colors: [
                                AppColors.fadeColor,
                                AppColors.contentBackground,
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 80),
                            // 👆 leave space for bottom container
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(height: 80),
                                // genres
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    buildGenreTag("Dark Fantasy"),
                                    const SizedBox(width: 10),
                                    buildGenreTag("Action"),
                                    const SizedBox(width: 10),
                                    buildGenreTag("Adventure"),
                                  ],
                                ),
                                Divider(
                                  color: Colors.white.withOpacity(0.3),
                                  thickness: 1,
                                  height: 30,
                                  indent: 30,
                                  endIndent: 30,
                                ),
                                // stats
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      _buildStat(
                                        "assets/details/eye.svg",
                                        "2.3M views",
                                      ),
                                      _buildStat(
                                        "assets/details/HandsClapping.svg",
                                        "2K clap",
                                      ),
                                      _buildStat(
                                        "assets/details/solid_movie.svg",
                                        "4 Seasons",
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.white.withOpacity(0.3),
                                  thickness: 1,
                                  height: 30,
                                  indent: 30,
                                  endIndent: 30,
                                ),
                                // description
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/details/fl.svg",
                                        height: 32,
                                        width: 29,
                                      ),
                                      const SizedBox(width: 7),
                                      Expanded(
                                        child: CustomTextWidget.subtitleNormal(
                                          "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                                          color: AppColors.white,
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Positioned logo
                    Positioned(
                      top: screenHeight * 0.7 - 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Transform.translate(
                            offset: const Offset(2, 2),
                            child: SvgPicture.asset(
                              "assets/details/anime-logo.svg",
                              height: 170,
                              width: 200,
                              colorFilter: const ColorFilter.mode(
                                Colors.black54,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/details/anime-logo.svg",
                            height: 170,
                            width: 200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // 👇 Fixed bottom container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: AppColors.continers),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Watch Now Button
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonBackground,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/details/play-bold.svg",
                              height: 22,
                              width: 22,
                            ),
                            const SizedBox(width: 10),
                            CustomTextWidget.subtitleBold(
                              "preview",
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 20),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.darkPurple,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/details/eye.svg",
                              height: 20,
                              width: 20,
                              colorFilter: const ColorFilter.mode(
                                AppColors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(width: 10),
                            CustomTextWidget.subtitleBold(
                              "Watch Now",
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String icon, String text) {
    return Row(
      children: [
        SvgPicture.asset(icon, height: 16, width: 16),
        const SizedBox(width: 6),
        CustomTextWidget.body(text, color: AppColors.white),
      ],
    );
  }
}
