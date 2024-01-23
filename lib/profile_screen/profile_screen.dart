import 'package:digi_ration_shop_owner_application/profile_screen/core/utils/navigator_service.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/core/utils/pref_utils.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/localization/app_localization.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/routes/app_routes.dart';
import 'package:digi_ration_shop_owner_application/profile_screen/theme/theme_helper.dart';

import 'core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/utils/size_utils.dart';

// Program Start
class profile_screen extends StatelessWidget {
  const profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocProvider(
          create: (context) => ThemeBloc(
            ThemeState(
              themeType: PrefUtils().getThemeData(),
            ),
          ),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                theme: theme,
                title: 'profilescreen',
                navigatorKey: NavigatorService.navigatorKey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale(
                    'en',
                    '',
                  ),
                ],
                initialRoute: AppRoutes.initialRoute,
                routes: AppRoutes.routes,
              );
            },
          ),
        );
      },
    );
  }
}
