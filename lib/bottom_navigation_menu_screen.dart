import 'package:bottom_navigation_bars/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/constants/app_constants.dart';

class BottomNavigationMenuScreen extends StatefulHookConsumerWidget {
  const BottomNavigationMenuScreen({super.key});

  @override
  ConsumerState<BottomNavigationMenuScreen> createState() =>
      _BottomNavigationMenuScreenState();
}

class _BottomNavigationMenuScreenState
    extends ConsumerState<BottomNavigationMenuScreen> {
  final screens = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    final currentIndex = useState<int>(0);
    return Scaffold(
      body: SafeArea(
        child: screens[currentIndex.value],
      ),
      bottomNavigationBar: NavigationBar(
        height: kBottomNavigationBarHeight.h,
        elevation: 0,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        backgroundColor: isDarkMode ? AppColors.dark : AppColors.light,
        indicatorColor: isDarkMode
            ? AppColors.white.withOpacity(0.1)
            : AppColors.black.withOpacity(0.1),
        selectedIndex: currentIndex.value,
        onDestinationSelected: (value) {
          currentIndex.value = value;
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
            ),
            label: "Todos",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
