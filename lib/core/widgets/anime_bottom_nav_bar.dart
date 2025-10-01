import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimeBottomNavBar extends StatefulWidget {
  const AnimeBottomNavBar({super.key});

  @override
  State<AnimeBottomNavBar> createState() => _AnimeBottomNavBarState();
}

class _AnimeBottomNavBarState extends State<AnimeBottomNavBar> {
  int _selectedIndex = 0;

  final List<NavBarItem> _navItems = [
    NavBarItem(
      iconPath: "assets/objects/home-2.svg",
      label: 'Home',
    ),
    NavBarItem(
      iconPath: "assets/objects/Vector.svg",
      label: 'Bookmark',
    ),
    NavBarItem(
      iconPath: "assets/objects/search-normal.svg",
      label: 'Search',
    ),
    NavBarItem(
      iconPath: "assets/objects/Group.svg",
      label: 'Global',
    ),
    NavBarItem(
      iconPath: "assets/objects/setting.svg",
      label: 'Settings',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // TODO: Handle navigation
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _navItems.asMap().entries.map((entry) {
              int index = entry.key;
              NavBarItem item = entry.value;
              bool isSelected = index == _selectedIndex;

              return GestureDetector(
                onTap: () => _onItemTapped(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.symmetric(
                    horizontal: isSelected ? 14 : 12,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.lightText
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        item.iconPath,
                        height: 20,
                        width: 20,
                        color: isSelected ? Colors.white : Colors.grey,
                      ),
                      if (isSelected) ...[
                        const SizedBox(width: 8),
                        Text(
                          item.label,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class NavBarItem {
  final String iconPath;
  final String label;

  NavBarItem({
    required this.iconPath,
    required this.label,
  });
}
