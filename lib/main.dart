import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/bindings/splash_binding.dart';
import 'package:spotify_clone/routes/app_pages.dart';
import 'package:spotify_clone/routes/app_routes.dart';
import 'package:spotify_clone/utils/app_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppWords.spotifyClone,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        primaryColor: Colors.black,
        primarySwatch: const MaterialColor(
          0xff000000,
          <int, Color>{
            50: Color(0xFF000000),
            100: Color(0xFF000000),
            200: Color(0xFF000000),
            300: Color(0xFF000000),
            400: Color(0xFF000000),
            500: Color(0xFF000000),
            600: Color(0xFF000000),
            700: Color(0xFF000000),
            800: Color(0xFF000000),
            900: Color(0xFF000000),
          },
        ),
      ),
      initialRoute: AppRoutes.splash,
      initialBinding: SplashBinding(),
      getPages: AppPages.list,
      // builder: EasyLoading.init(),
    );
  }
}
