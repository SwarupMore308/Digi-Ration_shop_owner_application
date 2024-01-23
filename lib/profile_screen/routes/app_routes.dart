import 'package:flutter/material.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/presentation/profilescreen_screen/profilescreen_screen.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/presentation/navigationbarsliderprofilescreen_screen/navigationbarsliderprofilescreen_screen.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/presentation/dropdown_profile_screen/dropdown_profile_screen.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String profilescreenScreen = '/profilescreen_screen';

  static const String navigationbarsliderprofilescreenScreen =
      '/navigationbarsliderprofilescreen_screen';

  static const String dropdownProfileScreen = '/dropdown_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        profilescreenScreen: ProfilescreenScreen.builder,
        navigationbarsliderprofilescreenScreen:
            NavigationbarsliderprofilescreenScreen.builder,
        dropdownProfileScreen: DropdownProfileScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ProfilescreenScreen.builder
      };
}
