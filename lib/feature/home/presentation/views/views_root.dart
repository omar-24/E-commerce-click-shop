import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/assets/colors.dart';
import 'package:gcamp_team10/feature/home/presentation/views/favorite_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/home_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/profile_view.dart';
import 'package:gcamp_team10/feature/home/presentation/views/setting_view.dart';

class ViewsRoot extends StatefulWidget {
   ViewsRoot({super.key});

  @override
  State<ViewsRoot> createState() => _ViewsRootState();
}

class _ViewsRootState extends State<ViewsRoot> {
  int _currentIndex =0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomeView(),
    SettingView(),
    FavoriteView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            left: 16,
            right: 16,
            bottom: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(100),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black26, width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNavItem(Icons.home, 0),
                      _buildNavItem(Icons.settings, 1),
                      _buildNavItem(Icons.favorite, 2),
                      _buildNavItem(Icons.person, 3),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }


  Widget _buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        width: 50,
        height: 50,
        child: Icon(
          icon,
          color: _currentIndex == index ? AppColor.primaryColor : Colors.black54,
          size: _currentIndex == index ? 34:26,
        ),
      ),
    );
  }
}
