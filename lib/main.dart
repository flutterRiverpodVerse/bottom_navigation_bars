import 'package:bottom_navigation_bars/bottom_navigation_menu_screen.dart';
import 'package:bottom_navigation_bars/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Bottom Navigation Bars',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const BottomNavigationMenuScreen(),
        );
      },
    );
  }
}
