import 'package:anime_app_demo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AnimeBottomNavBar extends StatefulWidget {
  const AnimeBottomNavBar({super.key});

  @override
  State<AnimeBottomNavBar> createState() => _AnimeBottomNavBarState();
}

class _AnimeBottomNavBarState extends State<AnimeBottomNavBar> {
  int _selectedIndex = 0;

  final List<NavBarItem> _navItems = [
    NavBarItem(
      icon: Image.asset("assets/ojects/home_icon.png"),
      activeIcon: Image.asset("assets/ojects/home_icon.png"),
      label: 'Home',
    ),
    NavBarItem(
      icon: Image.asset("assets/ojects/Group.png"),
      activeIcon: Image.asset("assets/ojects/Group.png"),
      label: 'Bookmark',
    ),
    NavBarItem(
      icon:Image.asset("assets/ojects/search-normal.png"), 
      activeIcon:Image.asset("assets/ojects/search.png"),
      label: 'search',
    ),
    NavBarItem(
      icon: Image.asset("assets/ojects/global.png"),
      activeIcon: Image.asset("assets/ojects/global.png"),
      label: 'Global',
    ),

    NavBarItem(
      icon: Image.asset("assets/ojects/setting.png"),
      activeIcon: Image.asset("assets/ojects/setting.png"),
      label: 'settings',
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // TODO: Handle navigation based on index
    switch (index) {
      case 0:
        // Navigate to Home
        break;
      case 1:
        // Navigate to Search
        break;
      case 2:
        // Navigate to Watchlist
        break;
      case 3:
        // Navigate to Profile  
        break;
      case 4:
        // Navigate to Profile
        break;  
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
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
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.symmetric(
                    horizontal: isSelected ? 20 : 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.lightText
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    
                        isSelected ? item.activeIcon : item.icon,
                       
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
  final Widget icon;
  final Widget activeIcon;
  final String label;

  NavBarItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
