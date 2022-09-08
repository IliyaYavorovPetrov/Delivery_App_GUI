import 'package:delivery_app/layout.dart';
import 'package:delivery_app/routing/routes.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/constants/style.dart';
import 'package:delivery_app/controllers/menu_controller.dart';
import 'package:delivery_app/controllers/navigation_controller.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => Container(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(
          name: rootRoute,
          page: () => Layout(),
        ),
        GetPage(
          name: rootRoute,
          page: () => Container(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      title: "Delivery App Admin",
      theme: ThemeData(
        scaffoldBackgroundColor: cLight,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
