import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/carousel_one_screen/carousel_one_screen.dart';
import '../presentation/login_page_screen/login_page_screen.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/select_sport_screen/select_sport_screen.dart';
import '../presentation/sport_details_screen/sport_details_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String carouselOneScreen = '/carousel_one_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String selectSportScreen = '/select_sport_screen';

  static const String sportDetailsScreen = '/sport_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    carouselOneScreen: (context) => CarouselOneScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    selectSportScreen: (context) => SelectSportScreen(),
    sportDetailsScreen: (context) => SportDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => CarouselOneScreen()
  };
}
